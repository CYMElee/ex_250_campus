#include "takeoff.h"


Takeoff::Takeoff(ros::NodeHandle nh,int UAV_ID){
    ros::NodeHandle NH = nh;
    MAV_ID = UAV_ID;
}


void Takeoff::MAV_takeoff()
{
    
    mavlink_topic = std::string("/MAV") + std::to_string(MAV_ID) + std::string("/mavlink/to");
    arm_clint = std::string("/MAV") + std::to_string(MAV_ID) + std::string("mavros/cmd/arming");
    setmode_clint = std::string("/MAV") + std::to_string(MAV_ID) + std::string("mavros/set_mode");
    takeoff_clint = std::string("/MAV") + std::to_string(MAV_ID) + std::string("mavros/cmd/takeoff");
    position_topic = std::string("/MAV") + std::to_string(MAV_ID) + std::string("mavros/setpoint_position/local");
    state_topic = std::string("/MAV") + std::to_string(MAV_ID) + std::string("mavros/state");

    wake_pub = NH.advertise<geometry_msgs::PoseStamped>(position_topic, 10); 
    takeoff_cl = NH.serviceClient<mavros_msgs::CommandTOL>(takeoff_clint);
    arming_client = NH.serviceClient<mavros_msgs::CommandBool>(arm_clint);
    set_mode_client = NH.serviceClient<mavros_msgs::SetMode>(setmode_clint);
    state_sub = NH->subscribe<mavros_msgs::State>(state_topic, 10, &Takeoff::state_cb,this);
    
    ros::topic::waitForMessage<mavros_msgs::Mavlink>(mavlink_topic);
    ROS_INFO("Message received or timeout reached. Continuing execution.");
    
    home();
    start();
    set_mode();   
    arm();
    takeoff();
}
void Takeoff::MAV_land(void){
        ROS_WARN("Land!");
        offb_set_mode.request.custom_mode = "LAND";
        set_mode_client.call(offb_set_mode);
        arm_cmd.request.value = false;
        arming_client.call(arm_cmd);
}

void Takeoff::home(void){


    ros::Rate rate_home(100);
    while(ros::ok() && !current_state.connected){
	  ros::spinOnce();
	  rate_home.sleep();
	  }	
    ros::topic::waitForMessage<mavros_msgs::Mavlink>(mavlink_topic);
    ROS_ERROR("Set Origion Position");
    sleep(2);
}

void Takeoff::start(void){
    pose.pose.position.x = 0;
    pose.pose.position.y = 0;
    pose.pose.position.z = 0;
    ros::Rate rate_takeoff(35);
    //send a few setpoints before starting
    for(int i = 100; ros::ok() && i > 0; --i){
        wake_pub.publish(pose);
        ros::spinOnce();
        rate_takeoff.sleep();
    }
}

void Takeoff::set_mode(void){
    offb_set_mode.request.custom_mode = "GUIDED";
    if( set_mode_client.call(offb_set_mode) && offb_set_mode.response.mode_sent) {
        ROS_ERROR("GUIDED enabled");
    }
}

void Takeoff::arm(void){
    arm_cmd.request.value = true;
    if( arming_client.call(arm_cmd) && arm_cmd.response.success) {
        ROS_ERROR("Vehicle armed");
    }
}

void Takeoff::takeoff(void){
    srv_takeoff.request.altitude = 0.5;
    srv_takeoff.request.latitude = 0;
    srv_takeoff.request.longitude = 0;
    srv_takeoff.request.min_pitch = 0;
    srv_takeoff.request.yaw = 0;
    if (takeoff_cl.call(srv_takeoff)) {
        ROS_INFO("srv_takeoff send ok %d", srv_takeoff.response.success);
    } else {
        ROS_ERROR("Failed Takeoff");
    }
}


void state_cb(const mavros_msgs::State::ConstPtr& msg){

	current_state = *msg;
}

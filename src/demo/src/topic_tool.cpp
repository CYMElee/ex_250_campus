#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/TwistStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include <cstdio>
#include <unistd.h>
#include <termios.h>
#include <fcntl.h>
#include <tf/tf.h>
#include <string>

geometry_msgs::PoseStamped host_mocap;

void host_pos(const geometry_msgs::PoseStamped::ConstPtr& msg)
{
    double roll, pitch, yaw;
    host_mocap = *msg;
    tf::Quaternion Q(
            msg->pose.orientation.x,
            msg->pose.orientation.y,
            msg->pose.orientation.z,
            msg->pose.orientation.w);
    tf::Matrix3x3(Q).getRPY(roll,pitch,yaw);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "topic");
    ros::NodeHandle nh;

    int UAV_ID;
    ros::param::get("UAV_ID", UAV_ID);
    std::string sub_topic = std::string("/vrpn_client_node/MAV") + std::to_string(UAV_ID) + std::string("/pose");

    ros::Publisher mocap_pos_pub = nh.advertise<geometry_msgs::PoseStamped>("mavros/vision_pose/pose", 2);
    ros::Subscriber host_sub = nh.subscribe<geometry_msgs::PoseStamped>(sub_topic, 10, host_pos);
    //recommend less than 50HZ
    ros::Rate rate(100);

    while (ros::ok()) {

        ROS_INFO("odom: %.3f, %.3f, %.3f", host_mocap.pose.position.x, host_mocap.pose.position.y, host_mocap.pose.position.z);
        mocap_pos_pub.publish(host_mocap);

        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}



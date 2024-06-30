#include "ros/ros.h"
#include <string>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/CommandTOL.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include <mavros_msgs/Mavlink.h>
#include "takeoff.h"

int UAV_ID=0;

int main(int argv,char** argc)
{
    ros::init(argv,argc,"main");
    ros::NodeHandle nh;
    ros::param::get("UAV_ID", UAV_ID);
    
    Takeoff takeoff(&nh,UAV_ID);
    takeoff.MAV_takeoff();

    ros::Rate rate(100.0);

    sleep(10);
    ros::Time time_out = ros::Time::now();
    while(ros::ok() && ros::Time::now() - time_out <ros::Duration(10) ){
      
        ros::spinOnce();
        rate.sleep();
    }

    takeoff.MAV_land();

    return 0;
}
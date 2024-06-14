#include "ros/ros.h"
#include <string>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/CommandTOL.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include <mavros_msgs/Mavlink.h>
#include "takeoff.h"



int main(int argv,char** argc)
{
    ros::init(argv,argc,"arm");
    ros::NodeHandle nh;
    int UAV_ID = 1;
    
    Takeoff takeoff(nh,UAV_ID);
    takeoff.MAV_takeoff();

    ros::Rate rate(100.0);

    sleep(10);
    ros::Time time_out = ros::Time::now();
    while(ros::ok() && ros::Time::now() - time_out <ros::Duration(5.0) ){
      
        ros::spinOnce();
        rate.sleep();
    }

    takeoff.MAV_land();

    return 0;
}
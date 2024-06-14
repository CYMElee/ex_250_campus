#ifndef TAKEOFF_H
#define TAKEOFF_H

#inclide "ros/ros.h"

#include ""
#include <geometry_msgs/PoseStamped.h>
#include "mavros_msgs/CommandBool.h"
#include "mavros_msgs/CommandTOL.h"
#include "mavros_msgs/SetMode.h"
#include "mavros_msgs/State.h"
#include "mavros_msgs/Mavlink.h"

class Takeoff{

    private:
        ros::Publisher wake_pub; /*sent data before start*/
        ros::ServiceClient takeoff_cl/*take off client*/
        ros::ServiceClient arming_client; /*arming client */
        ros::ServiceClient set_mode_client; /*set mode client*/

        mavros_msgs::CommandTOL srv_takeoff; /*takeoff object*/
        mavros_msgs::CommandBool arm_cmd; /*arm object*/
        mavros_msgs::SetMode offb_set_mode; /*set mode object*/
        geometry_msgs::PoseStamped pose /*position object*/

        string mavlink_topic,arm_clint,takeoff_clint,position_topic,setmode_clint;
        void origion(void);
        void start(void);
        void set_mode(void);
        void arm(void);
        void takeoff(void);

    public:
        MAV(ros::Nodehandle nh,int MAV_ID,ros::Rate rate);

};

#endif
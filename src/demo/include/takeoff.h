#ifndef TAKEOFF_H
#define TAKEOFF_H

#include "ros/ros.h"
#include "string"
#include <geometry_msgs/PoseStamped.h>
#include "mavros_msgs/CommandBool.h"
#include "mavros_msgs/CommandTOL.h"
#include "mavros_msgs/SetMode.h"
#include "mavros_msgs/State.h"
#include "mavros_msgs/Mavlink.h"

class Takeoff{

    private:
        ros::Publisher wake_pub; /*sent data before start*/
        ros::ServiceClient takeoff;/*take off client*/
        ros::ServiceClient arm; /*arming client */
        ros::ServiceClient setmode; /*set mode client*/
	ros::Subscriber state_sub;

        mavros_msgs::CommandTOL srv_takeoff; /*takeoff object*/
        mavros_msgs::CommandBool arm_cmd; /*arm object*/
        mavros_msgs::SetMode offb_set_mode; /*set mode object*/
        geometry_msgs::PoseStamped pose ;/*position object*/
	mavros_msgs::State current_state;

        int MAV_ID;
        std::string mavlink_topic,arm_clint,setmode_clint,takeoff_clint,position_topic,state_topic;
        /*take off*/

    public:
      void MAV_takeoff(void);
      void MAV_land(void);
      void state_cb(const mavros_msgs::State::ConstPtr& msg);
      Takeoff(ros::NodeHandle *nh,int UAV_ID);

};

#endif 

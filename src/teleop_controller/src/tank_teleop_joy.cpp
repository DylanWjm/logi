#include <sensor_msgs/Joy.h>
#include <ros/ros.h>
#include"std_msgs/Float32.h" 
#include<string>
#include<vector>
#include <sensor_msgs/Joy.h> 
#include <button_msgs/button.h>
#include<unistd.h>//Linux系统下网络通讯头文件集合
#include<sys/socket.h>
#include<netdb.h>
#include<arpa/inet.h>
#include<iostream>
#include<string.h>
#include<stdio.h>

#define PORT 6666


// create the TeleopTurtle class and define the joyCallback function that will take a joy msg 
class TeleopTank
{ 
public: 
    TeleopTank();

    
private: 
    void joyCallback(const sensor_msgs::Joy::ConstPtr& joy);
    void Data_send();
    
    ros::NodeHandle nh_; 
    
    ros::Timer loop_timer_;
    int dir_,str_,vel_,rev_,rev1_,rev2_,rev3_;
    
    // used to define which axes of the joystick will control our Tank 
    double dir_scale_, str_scale_,vel_scale_; 
    //float cmd_dir_,cmd_str_,cmd_vel_;
    ros::Publisher dir_pub_; 
    ros::Publisher str_pub_;
    ros::Publisher vel_pub_;
    ros::Subscriber joy_sub_; 
    ros::Publisher button_pub_;

    std_msgs::Float32 cmd_vel_;
    std_msgs::Float32 cmd_str_;
    std_msgs::Float32 cmd_dir_;
    std_msgs::Float32 cmd_vel;
    std_msgs::Float32 cmd_str;
    std_msgs::Float32 cmd_dir;
    button_msgs::button receive;
};


TeleopTank::TeleopTank(): 
 str_(0),
 vel_(5),
 rev_(0),
rev1_(1),
rev2_(2),
rev3_(3)

{ 

    //auto &pnh = nh_;
    //  initialize some parameters 
    nh_.param("axis_str", str_, str_); 
    nh_.param("axis_vel", vel_, vel_); 
    nh_.param("button_rev",rev_, rev_);
    nh_.param("button_rev1",rev1_, rev1_);
    nh_.param("button_rev2",rev2_, rev2_);
    nh_.param("button_rev3",rev3_, rev3_);
    nh_.param("scale_str", str_scale_, str_scale_); 
    nh_.param("scale_vel", vel_scale_, vel_scale_); 


    // create a publisher that will advertise on the command_velocity topic of the turtle 
    this->dir_pub_ = this->nh_.advertise<std_msgs::Float32>("cmd_dir", 10);//发布“cmd_dir“为话题的消息，第二个参数表示消息发布队列的大小
    this->str_pub_ = this->nh_.advertise<std_msgs::Float32>("cmd_str", 10);
    this->vel_pub_ = this->nh_.advertise<std_msgs::Float32>("cmd_vel", 10);
    this->button_pub_ = this->nh_.advertise<button_msgs::button>("receive", 10);

    this->cmd_vel_.data = 0;
    this->cmd_str_.data = 0;
    this->cmd_dir_.data = 0;
    this->cmd_vel.data = 0;
    this->cmd_str.data = 0;
    this->cmd_dir.data = 0;  

 
     // subscribe to the joystick topic for the input to drive the Tank 

    joy_sub_ = nh_.subscribe<sensor_msgs::Joy>("joy", 10, &TeleopTank::joyCallback, this); 

    loop_timer_ = nh_.createTimer(ros::Duration(0.05), boost::bind(&TeleopTank::Data_send, this));
}


void TeleopTank::joyCallback(const sensor_msgs::Joy::ConstPtr& joy) 
{ 

    // take the data from the joystick and manipulate it by scaling it and using independent axes to control the linear and angular velocities of the Tank 
     cmd_str.data = (str_scale_*joy->axes[str_]); //角度
     cmd_vel.data = (vel_scale_*joy->axes[vel_]);
     receive.rev = joy->buttons[rev_];
     receive.rev1 = joy->buttons[rev1_];
     receive.rev2 = joy->buttons[rev2_];
     receive.rev3 = joy->buttons[rev3_];

}

void TeleopTank::Data_send()
{
       cmd_str_.data = abs(50*cmd_str.data); //角度
if(cmd_str.data>0)
    {
        cmd_dir_.data = 1;
    }
else if(cmd_str.data<0)
    {
        cmd_dir_.data = -1;
    }
else
    {
        cmd_dir_.data = 0;
    }


//
//    if(receive.rev)
//    {
//        cmd_vel_.data = cmd_vel.data;//倒车
//    }
//    else
//    {
       cmd_vel_.data = ((cmd_vel.data)+2);// cmd_vel_.data = -0.9*16*((cmd_vel.data)-2);
//    }


    dir_pub_.publish(cmd_dir_);
    str_pub_.publish(cmd_str_);
    vel_pub_.publish(cmd_vel_);
    button_pub_.publish(receive);
}


int main(int argc, char** argv) 
{ 
    // initialize our ROS node, create a teleop_tank, and spin our node until Ctrl-C is pressed 
    ros::init(argc, argv, "teleop_tank"); 
    TeleopTank teleop_tank;

//    TeleopTank tel;

//    int m_socketclient;
//    m_socketclient = socket(AF_INET,SOCK_DGRAM,0);
//    if(m_socketclient<0)
//    {
//        printf("create cilent socket fail!\n");
//        return -1;
//    }
//    struct sockaddr_in m_clientaddr;
//    memset(&m_clientaddr,0,sizeof(m_clientaddr));
//    m_clientaddr.sin_family = AF_INET;
//    m_clientaddr.sin_addr.s_addr = inet_addr("192.168.0.112");
//    m_clientaddr.sin_port = htons(PORT);
//    bind(m_socketclient,(sockaddr*)&m_clientaddr,sizeof(m_clientaddr));
//    int countnum=0;


    ros::spin();
//    while(1)
//    {


//        std::ostringstream os;
//        os<<tel.cmd_vel.data;
//        std::string send_vel = os.str();
//        char sendbuf[3+send_vel.size()];
//        sendbuf[0] = char(tel.receive.rev1);
//        sendbuf[1] = char(tel.receive.rev2);
//        sendbuf[2] = char(tel.receive.rev3);
//        for (int i = 0; i < send_vel.size(); ++i) {
//            sendbuf[3+i] = send_vel[i];
//        }
//        sendto(m_socketclient,sendbuf,sizeof(sendbuf),0,(const sockaddr*)&m_clientaddr,sizeof(m_clientaddr));

//        std::cout<<"sendbuf"<<sendbuf<<"countnum"<<countnum<<std::endl;

// }
    return 0;
}

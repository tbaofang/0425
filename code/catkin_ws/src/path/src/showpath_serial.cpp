#include <ros/ros.h>
#include <std_msgs/String.h>
#include <boost/asio.hpp>
#include <geometry_msgs/PoseStamped.h>
#include <tf/tf.h>
#include <path/serial.h>

using namespace boost::asio;

int main(int argc, char** argv)
{
    unsigned char buf[64];
    unsigned char get_data[32];
    float trans_data[32] = {0};
    
    unsigned int flag;
    int count = 0;

    float vl = 0.0f;
	float vr = 0.0f;
	float vk = 0.0f;
	float wk = 0.0f;
	float w_gyro= 0.0f;

    float x = 0.0;
    float y = 0.0;
    float th = 0.0;
    float delta_x = 0.0;
    float delta_y = 0.0;
    float delta_th = 0.0;

    ros::init(argc, argv, "showpath_serial");
    ros::NodeHandle n;
    ros::Publisher serial_pub = n.advertise<path::serial>("serial", 1, true);
    
    io_service iosev;
    serial_port sp(iosev, "/dev/ttyUSB0");

    //设置串口参数
    sp.set_option(serial_port::baud_rate(115200));
    sp.set_option(serial_port::flow_control());
    sp.set_option(serial_port::parity());
    sp.set_option(serial_port::stop_bits());
    sp.set_option(serial_port::character_size(8));

    ros::Rate loop_rate(30);  
    path::serial msg;  
    while(ros::ok()){
        flag = 0;

        read(sp, buffer(buf));
        for(int i=0;i<64;i++){
            printf("%x ", buf[i]);
        }
        printf("\n");
        for(int i=0; i<64; i++){
            if(buf[i] == 0xa5 && buf[i+1] == 0x5a){
                for(int j=i; j<i+32; j++){
                    get_data[j-i] = buf[j];
                    // printf("%x ", get_data[j-i]);
                }
                flag = 1;
            }
            if(flag == 1) break;
        }
        // printf("\n\n");


        //左轮、右轮、x、y、航向角由十六进制数转化十进制数
		if(count == 0){
			trans_data[0] = (float)(get_data[6] * 256 + get_data[5]) / 100;
			trans_data[1] = (float)(get_data[8] * 256 + get_data[7]) / 100;
			trans_data[2] = (float)(get_data[10] * 256 + get_data[9]) / 100;
			trans_data[3] = (float)(get_data[12] * 256 + get_data[11]) / 100;
			trans_data[4] = (float)(get_data[14] * 256 + get_data[13]) / 100; 
		}
		else if(count == 1){
			trans_data[10] = (float)(get_data[6] * 256 + get_data[5]) / 100;
			trans_data[11] = (float)(get_data[8] * 256 + get_data[7]) / 100;
			trans_data[12] = (float)(get_data[10] * 256 + get_data[9]) / 100;
			trans_data[13] = (float)(get_data[12] * 256 + get_data[11]) / 100;
			trans_data[14] = (float)(get_data[14] * 256 + get_data[13]) / 100;
			//打印
			for(int n=0; n<32; n++){
				printf("%x ", get_data[n]);
			}
			printf("\n");
			for(int n=0; n<32; n++){
				printf("%u ", get_data[n]);
			}
			printf("\n");
			for(int n=0; n<20; n++){
				printf("%.2f ", trans_data[n]);
				if(n == 9) printf("\n");
			}
			printf("\n\n");
			count = -1;

			//计算机器人左轮移动速度vl、左轮移动速度vr、平均速度vk、旋转速度wk、陀螺仪旋转速度w_gyro;
			//车轮间距：260mm，车轮半径：28mm，数据帧频率：50ms
			vl = (trans_data[10]-trans_data[0]) / 0.1 * 3.1415926 / 180 * 0.028;
			vr = (trans_data[11]-trans_data[1]) / 0.1 * 3.1415926 / 180 * 0.028;
			vk = (vl + vr) / 2;
			wk = (vl + vr) / 0.26;
			w_gyro = (trans_data[14]-trans_data[4]) / 0.1;
			printf("vl=%f ", vl);
			printf("vr=%f ", vr);
			printf("vk=%f ", vk);
			printf("wk=%f ", wk);
			printf("w_gyro=%f ", w_gyro);
			printf("\n\n");
		}
	    count++;	

        msg.vk = vk;
        msg.wk = wk;
        ROS_INFO("msg.vx = %f, msg.wk = %f", msg.vk, msg.wk);
        serial_pub.publish(msg);
        loop_rate.sleep();
    }
    return 0;
}


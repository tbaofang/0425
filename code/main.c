#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <fcntl.h>
#include <termios.h>

#include "serial.h"


#define  Odometry_TTY	"/dev/ttyUSB0"
#define  BUF_SIZE    5000
#define SERV_IP "127.0.0.1"
#define SERV_PORT 6667

int    usrt_odo_fd;

int main(int argc, char **argv)
{
	int ret;
	int read_num = 0;
	char bu[64]; 
	char data[63];
	unsigned char get_data[32];
	int flag = 0;
	float trans_data[20]= {10};
	int count = 0;

	float vl = 0.0f;
	float vr = 0.0f;
	float vk = 0.0f;
	float wk = 0.0f;
	float w_gyro= 0.0f;


	int cfd;
	struct sockaddr_in serv_addr;
//	socklen_t serv_addr_len;
    char buf[BUFSIZ];
    int n;

	cfd = socket(AF_INET, SOCK_STREAM, 0);printf("aa");
    memset(&serv_addr, 0, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;printf("aaw");
    serv_addr.sin_port = htons(SERV_PORT);
    inet_pton(AF_INET, SERV_IP, &serv_addr.sin_addr.s_addr);printf("awa");
	connect(cfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr));

	printf("sdf");



	//打开及初始化串口
	usrt_odo_fd = UART0_Open(usrt_odo_fd, Odometry_TTY);
	if (usrt_odo_fd < 0)
	{
		printf("Open Odometry Uart %s Error.Exit App!", Odometry_TTY);
		exit(1);
	}
	do
	{
		ret = UART0_Init(usrt_odo_fd, 115200, 0, 8, 1, 'N');
		printf("Set Odometry Uart Port Exactly!\n");
	} while (-1 == ret);

	

	//读串口及处理数据
	while(1){
		memset(bu, 0, BUF_SIZE);
		for(int k=0; k<64; k++){
			read_num = read(usrt_odo_fd, bu, 1);
			data[k] = bu[0];
		}
		//取出一段完整数据
		for(int j=0; j<64; j++){
			if(data[j] == 0xffffffa5){
				for(int m=j;m<j+32;m++){
					get_data[m-j] = data[m];

					write(cfd, &data[m], 1);

				}
				flag = 1;
			}
			if(flag == 1) break;
		}
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
			}
			printf("\n");
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

			// fgets(buf, sizeof(buf), stdin);
	    	// write(cfd, buf, strlen(buf));

			}

	count++;

	
	}

	return 0;
}
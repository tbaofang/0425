#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <termios.h>
#include <errno.h>
#include <string.h>

#define FALSE  (-1)
#define TRUE   (0)

#define Odometry_TTY "/dev/ttyUSB1"

int usrt_odo_fd;

int UART0_Open(int fd, char* port)
{

    fd = open( port, O_RDWR|O_NOCTTY|O_NDELAY);
//	fd = open(port, O_CREAT | O_APPEND | O_RDWR);
    if (FALSE == fd)
    {
        perror("Can't Open Serial Port");
        return(FALSE);
    }

    if(fcntl(fd, F_SETFL, 0) < 0)
    {
        printf("fcntl failed!\n");
        return(FALSE);
    }
    else
    {
        printf("fcntl=%d\n",fcntl(fd, F_SETFL,0));
    }

    if(0 == isatty(STDIN_FILENO))
    {
        printf("standard input is not a terminal device\n");
        return(FALSE);
    }
    else
    {
        printf("isatty success!\n");
    }
    printf("fd->open=%d\n",fd);
    return fd;
}

int UART0_Set(int fd,int speed,int flow_ctrl,int databits,int stopbits,int parity)
{

    int   i;
    int   status;
    int   speed_arr[] = {B230400,B115200, B19200, B9600, B4800, B2400, B1200, B300};
    int   name_arr[] = {230400,115200,  19200,  9600,  4800,  2400,  1200,  300};

    struct termios options;

    if( tcgetattr( fd,&options)  !=  0)
    {
        perror("SetupSerial 1");
        return(FALSE);
    }


    for ( i= 0;  i < sizeof(speed_arr) / sizeof(int);  i++)
    {
        if  (speed == name_arr[i])
        {
            cfsetispeed(&options, speed_arr[i]);
            cfsetospeed(&options, speed_arr[i]);
            printf("set  speed=%d,speed-arr=%d\r\n",speed,speed_arr[i]);
        }
    }

    options.c_cflag |= CLOCAL;
    options.c_cflag |= CREAD;

    switch(flow_ctrl)
    {

        case 0 :
              options.c_cflag &= ~CRTSCTS;
              break;

        case 1 :
              options.c_cflag |= CRTSCTS;
              break;
        case 2 :
              options.c_cflag |= IXON | IXOFF | IXANY;
              break;
    }
        
    switch (stopbits)
    {
        case 1:
                 options.c_cflag &= ~CSTOPB; break;
        case 2:
                 options.c_cflag |= CSTOPB; break;
        default:
                       fprintf(stderr,"Unsupported stop bits\n");
                       return (FALSE);
    }
 
    options.c_cflag &= ~CSIZE;
    switch (databits)
    {
        case 5    :
                     options.c_cflag |= CS5;
                     break;
        case 6    :
                     options.c_cflag |= CS6;
                     break;
        case 7    :
                 options.c_cflag |= CS7;
                 break;
        case 8:
                 options.c_cflag |= CS8;
                 break;
        default:
                 fprintf(stderr,"Unsupported data size\n");
                 return (FALSE);
    }

    switch (parity)
    {
        case 'n':
        case 'N': 
                 options.c_cflag &= ~PARENB;
                 options.c_iflag &= ~INPCK;
                 break;
        case 'o':
        case 'O':
                 options.c_cflag |= (PARODD | PARENB);
                 options.c_iflag |= INPCK;
                 break;
        case 'e':
        case 'E':
                 options.c_cflag |= PARENB;
                 options.c_cflag &= ~PARODD;
                 options.c_iflag |= INPCK;
                 break;
        case 's':
        case 'S': 
                 options.c_cflag &= ~PARENB;
                 options.c_cflag &= ~CSTOPB;
                 break;
        default:
                 fprintf(stderr,"Unsupported parity\n");
                 return (FALSE);
    }


    options.c_oflag &= ~OPOST;

    options.c_lflag &= ~(ICANON | ECHO | ECHOE | ISIG);



    options.c_cc[VTIME] = 1; 
    options.c_cc[VMIN] = 1; 

    tcflush(fd,TCIFLUSH);


    if (tcsetattr(fd,TCSANOW,&options) != 0)
    {
        perror("com set error!\n");
        return (FALSE);
    }
    return (TRUE);
}

int UART0_Init(int fd, int speed,int flow_ctrl,int databits,int stopbits,int parity)
{
    int err;
    if (UART0_Set(fd,speed,0,8,1,'N') == FALSE)
    {
        return FALSE;
    }
    else
    {
        return  TRUE;
    }
}

int main(int argc, char** argv)
{
    int ret;
    int flag;
    int read_num;
    unsigned char buf[1000];
    unsigned char read_data[64];
    unsigned char get_data[32];

    usrt_odo_fd = UART0_Open(usrt_odo_fd, Odometry_TTY);
    if(usrt_odo_fd < 0){
        printf("open odoemtry uart %s error. exit app", Odometry_TTY);
        exit(1);
    }
    do{
        ret = UART0_Init(usrt_odo_fd, 115200, 0, 8, 1, 'N');
        printf("set odometry uart port exactly!\n");
    }while(ret == -1);

    while(1){
        flag = 0;
        memset(buf, 0, 1000);

        for(int i=0; i<64; i++){
            read_num = read(usrt_odo_fd, buf, 64);
            read_data[i] = buf[0];
            printf("%x ", buf[0]);
        }
        // read_num = read(usrt_odo_fd, buf, 64);
        // for(int i=0; i<64; i++){
        //     printf("%x ", buf[i]);
        // }
        printf("\n");

        for(int j=0; j<64; j++){
            if(read_data[j] == 0xa5 && read_data[j+1] == 0x5a){
                for(int k=j; k<j+32; k++){
                    get_data[k-j] = read_data[k];
                    printf("%x ", get_data[k-j]);

                }
                flag = 1;
            }
            if(flag == 1) break;
        }
        printf("\n\n");
    }
}

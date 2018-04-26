#ifndef __SERIAL_H__
#define __SERIAL_H__


extern int UART0_Open(int fd,char* port);
extern int UART0_Init(int fd, int speed,int flow_ctrl,int databits,int stopbits,int parity);
extern int UART0_Set(int fd,int speed,int flow_ctrl,int databits,int stopbits,int parity);
extern void UART0_Close(int fd);


#endif

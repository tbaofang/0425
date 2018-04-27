#include <stdio.h>
#include <unistd.h>
#include <sys/socket.h>
#include <string.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <ctype.h>

#define SERV_IP "192.168.1.111"
#define SERV_PORT 9855

int main(void)
{
	int lfd, cfd;
	struct sockaddr_in serv_addr, clie_addr;
	socklen_t clie_addr_len;
	char clie_IP[BUFSIZ];
	unsigned char buf[BUFSIZ];
	int n, i, ret;

	lfd = socket(AF_INET, SOCK_STREAM, 0);
	if(lfd == -1){
		perror("socket error");
		exit(1);
	}

	bzero(&serv_addr, sizeof(serv_addr));
	serv_addr.sin_family = AF_INET;
	serv_addr.sin_port = htons(SERV_PORT);
	serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);

	ret = bind(lfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr));
	if(ret == -1){
		perror("bind error");
		exit(1);
	}

	ret = listen(lfd, 128);
	if(ret == -1){
		perror("listen error");
		exit(1);
	}

	clie_addr_len = sizeof(clie_addr);
	cfd = accept(lfd, (struct sockaddr *)&clie_addr, &clie_addr_len);
	if(cfd == -1){
		perror("accept error");
		exit(1);
	}

	printf("cliet IP:%s, client port:%d\n",
		    inet_ntop(AF_INET, &clie_addr.sin_addr.s_addr, clie_IP, sizeof(clie_IP)),
		  	ntohs(clie_addr.sin_port));
	while(1)
	{
		n = read(cfd, buf, 1);
		// printf("%u", buf[0]);
		// for(i = 0; i < n; i++)
		// 	buf[i] = toupper(buf[i]);
		printf("%x ", buf[0]);
		write(cfd, buf, 1);
		
	}

	close(lfd);
	close(cfd);

//	printf("1223");
	return 0;
}

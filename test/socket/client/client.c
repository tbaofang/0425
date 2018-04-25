#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <arpa/inet.h>

#define SERV_IP "127.0.0.1"
#define SERV_PORT 6667

int main(void)
{
	int cfd;
	struct sockaddr_in serv_addr;
//	socklen_t serv_addr_len;
    char buf[BUFSIZ];
    int n;
    char aa = 0xfa;

	cfd = socket(AF_INET, SOCK_STREAM, 0);

    // printf("123");
    memset(&serv_addr, 0, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(SERV_PORT);
    inet_pton(AF_INET, SERV_IP, &serv_addr.sin_addr.s_addr);

	connect(cfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr));
    // printf("456");
    // printf("%l", strlen(buf));
    while(1)
    {
	    // fgets(buf, sizeof(buf), stdin);
        buf[0] = aa;
        
        // write(STDOUT_FILENO, buf, 1);
        // buf[0] = 'a';
	    write(cfd, buf, 1);
	    // n = read(cfd, buf,1);
        printf("%x ", buf[0]);
	    // write(STDOUT_FILENO, buf, n);
    }
    
    close(cfd);

	return 0;
}

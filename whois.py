import socket,sys
#exemplo feito em aula do funcionamento do whois, para colher informacoes do site alvo.
if len(sys.argv) > 1:
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect(("200.160.2.3",43))
	s.send(sys.argv[1]+'\r\n')
	resp = s.recv(1024)
	print resp
else:
	print("Utilizacao : ./whois.py www.site.com.br")

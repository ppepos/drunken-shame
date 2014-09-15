ipaddr = 127.0.0.1

all: build-all run-all

build-all: build-master build-intro1 build-intro2 build-crypto1 build-crypto2 build-crypto3 build-crypto4 build-sql1 build-sql2 build-sql3 build-sql4 build-web1 build-web2

run-all: run-master run-intro1 run-intro2 run-crypto1 run-crypto2 run-crypto3 run-crypto4 run-sql1 run-sql2 run-sql3 run-sql4 run-web1 run-web2

clean:
	yes

kill:
	sudo docker kill master
	sudo docker kill askgod
	sudo docker kill intro1
	sudo docker kill intro2
	sudo docker kill crypto1
	sudo docker kill crypto2
	sudo docker kill crypto3
	sudo docker kill crypto4
	sudo docker kill sql1
	sudo docker kill sql2
	sudo docker kill sql3
	sudo docker kill sql4
	sudo docker kill web1
	sudo docker kill web2
	sudo docker rm master
	sudo docker rm askgod
	sudo docker rm intro1
	sudo docker rm intro2
	sudo docker rm crypto1
	sudo docker rm crypto2
	sudo docker rm crypto3
	sudo docker rm crypto4
	sudo docker rm sql1
	sudo docker rm sql2
	sudo docker rm sql3
	sudo docker rm sql4
	sudo docker rm web1
	sudo docker rm web2

build-master:
	cd containers/apache && sed -i s/IPADDR/$(ipaddr)/g apache-adagios.conf
	sudo docker build -t master .

build-askgod:
	cd containers/askgod && sudo docker build -t askgod .

build-intro1:
	cd containers/intro1 && sudo docker build -t intro1 .

build-intro2:
	cd containers/intro2 && sudo docker build -t intro2 .

build-crypto1:
	cd containers/crypto1 && sudo docker build -t crypto1 .

build-crypto2:
	cd containers/crypto2 && sudo docker build -t crypto2 .

build-crypto3:
	cd containers/crypto3 && sudo docker build -t crypto3 .

build-crypto4:
	cd containers/crypto4 && sudo docker build -t crypto4 .

build-sql1:
	cd containers/sql1 && sudo docker build -t sql1 .

build-sql2:
	cd containers/sql2 && sudo docker build -t sql2 .

build-sql3:
	cd containers/sql3 && sudo docker build -t sql3 .

build-sql4:
	cd containers/sql4 && sudo docker build -t sql4 .

build-web1:
	cd containers/web1 && sudo docker build -t web1 .

build-web2:
	cd containers/web2 && sudo docker build -t web2 .

run-master:
	sudo docker run -d -t -p 81:80 --name master master

run-askgod:
	sudo docker run -i -t -p 82:80 --name askgod askgod bash

run-intro1:
	sudo docker run -d -t -p 8078:80 --name intro1 intro1

run-intro2:
	sudo docker run -d -t -p 8079:80 --name intro2 intro2

run-crypto1:
	sudo docker run -d -t -p 8080:80 --name crypto1 crypto1

run-crypto2:
	sudo docker run -d -t -p 8081:80 --name crypto2 crypto2

run-crypto3:
	sudo docker run -d -t -p 8082:80 --name crypto3 crypto3

run-crypto4:
	sudo docker run -d -t -p 8083:80 --name crypto4 crypto4

run-sql1:
	sudo docker run -d -t -p 8084:80 --name sql1 sql1

run-sql2:
	sudo docker run -d -t -p 8085:80 --name sql2 sql2

run-sql3:
	sudo docker run -d -t -p 8086:80 --name sql3 sql3

run-sql4:
	sudo docker run -d -t -p 8087:80 --name sql4 sql4

run-web1:
	sudo docker run -d -t -p 8088:80 --name web1 web1

run-web2:
	sudo docker run -d -t -p 8089:80 --name web2 web2


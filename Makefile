all: build-all run-all

build-all: build-crypto1 build-crypto2 build-crypto3 build-crypto4 build-sql1 build-sql2 build-sql3

run-all: run-crypto1 run-crypto2 run-crypto3 run-crypto4 run-sql1 run-sql2 run-sql3

clean:
	yes

kill:
	sudo docker kill crypto1
	sudo docker kill crypto2
	sudo docker kill crypto3
	sudo docker kill crypto4
	sudo docker kill sql1
	sudo docker kill sql2
	sudo docker rm crypto1
	sudo docker rm crypto2
	sudo docker rm crypto3
	sudo docker rm crypto4
	sudo docker rm sql1
	sudo docker rm sql2

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


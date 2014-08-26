all: build-all run-all

build-all: build-crypto1 build-crypto2 build-crypto3 build-crypto4 build-sql1

run-all: run-crypto1 run-crypto2 run-crypto3 run-crypto4 run-sql1

clean:
	yes

kill:
	docker kill crypto1
	docker kill crypto2
	docker kill crypto3
	docker kill crypto4
	docker kill sql1
	docker rm crypto1
	docker rm crypto2
	docker rm crypto3
	docker rm crypto4
	docker rm sql1

build-crypto1:
	cd containers/crypto1 && docker build -t crypto1 .

build-crypto2:
	cd containers/crypto2 && docker build -t crypto2 .

build-crypto3:
	cd containers/crypto3 && docker build -t crypto3 .

build-crypto4:
	cd containers/crypto4 && docker build -t crypto4 .

build-sql1:
	cd containers/sql1 && docker build -t sql1 .

run-crypto1:
	docker run -d -t -p 8080:80 --name crypto1 crypto1

run-crypto2:
	docker run -d -t -p 8081:80 --name crypto2 crypto2

run-crypto3:
	docker run -d -t -p 8082:80 --name crypto3 crypto3

run-crypto4:
	docker run -d -t -p 8083:80 --name crypto4 crypto4

run-sql1:
	docker run -d -t -p 8084:80 -v ${PWD}/containers/sql1/data:/var/lib/mysql --name sql1 sql1

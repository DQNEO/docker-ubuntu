.PHONY: all ubuntu-go ubuntu-compiler ubuntu-compiler-go

all: ubuntu-go ubuntu-compiler ubuntu-compiler-go

# install go
ubuntu-go: Dockerfile-go
	docker build -t dqneo/$@:latest -f $< .
	docker push     dqneo/$@:latest

# install gcc related stuff
ubuntu-compiler: Dockerfile-compiler
	docker build --tag dqneo/$@:latest -f $< .
	docker push        dqneo/$@:latest

# install gcc related stuff and go
ubuntu-compiler-go: Dockerfile-compiler-go
	docker build --tag dqneo/$@:latest -f $< .
	docker push        dqneo/$@:latest

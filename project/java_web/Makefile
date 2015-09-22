.DEFAULT:help
.PHONY:help
.SELENT:help

WEB_ROOT:= $(realpath /root/gogo)
VERSION    = $(shell git log | grep -cE 'Author:.*<.*@.*>')

CP:= cp -fpR
BUILD:= docker build
RUN:= docker run
PS:= docker ps
STOP:= docker stop 
RM:= docker rm 
RMI:= docker rmi
WEB_NAME:=gogo

help:
		@echo "Supply the forwing target"
		@echo " dev        - build app image test"
		@echo " build      - build app image "
		@echo " start      - start demo app "
dev:
		@echo "build images for dev"
		$(CP) $(WEB_ROOT) ./ 
		$(BUILD) -t $(WEB_NAME).$(VERSION) .
start:
		@echo "build images test"
		docker run -d -p 8888:8080 gogo
		docker ps

build:
		@echo "build images"
		docker build -t gogo .
clean:
	

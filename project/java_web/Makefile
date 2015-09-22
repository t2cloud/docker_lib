.DEFAULT:help
.PHONY:help
.SELENT:help

WEB_ROOT:= $(realpath /root/gogo)
VERSION    = $(shell git log | grep -cE 'Author:.*<.*@.*>')

CP:= cp -fpR
IMAGE:= docker images
BUILD:= docker build
RUN:= docker run
PS:= docker ps
STOP:= docker stop 
RM:= docker rm 
RMI:= docker rmi
WEB_NAME:=gogo
H_PORT:= 8888
C_PORT:= 8080

NAME=$(WEB_NAME).$(VERSION) 
help:
		@echo "Supply the forwing target"
		@echo " dev        - build app image test"
		@echo " build      - build app image "
		@echo " start      - start demo app "
dev:
		@echo "build images for dev"
		$(CP) $(WEB_ROOT) ./ 
		$(BUILD) -t $(NAME) .
		$(IMAGE)
start:
		@echo "build images test"
		$(RUN) -d -p $(H_PORT):$(C_PORT) $(NAME)
		$(PS)
stop:
		$(PS) -q | xargs $(STOP) 
rm:
		$(PS) -a -q | xargs $(RM) 
rmi:
		$(RMI) $(NAME)


build:
		@echo "build images"
		$(BUILD) -t $(NAME) .
		$(IMAGE)

clean:stop rm rmi
		@echo "end"
	

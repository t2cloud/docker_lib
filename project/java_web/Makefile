.DEFAULT:help
	.PHONY:help
.SELENT:help
help:
		@echo "Supply the forwing target"
		@echo " build      - build app image "
		@echo " start      - start demo app "
build:
		@echo "build images test"
		docker build -t gogo .
start:
		@echo "build images test"
		docker run -d -p 8888:8080 gogo
		docker ps

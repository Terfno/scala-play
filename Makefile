CNAME:=play-prac
INAME:=terfno/play-prac

dev:
	@docker run -it -v ${PWD}:/scala -w /scala -p 9000:9000 terfno/sbt sh

d/build:
	@docker build -t ${INAME} .

d/run:
	@docker run -it -v ${PWD}:/scala -w /scala -p 9000:9000 --name="${CNAME}" ${INAME} sh

d/start:
	@docker start ${CNAME}

d/exec:
	@docker exec -it ${CNAME} sh

d/stop:
	@docker stop ${CNAME}

d/commit:
	@docker commit ${CNAME} terfno/play-prac

d/rm:
	@docker rm ${CNAME}

d/rmi:
	@docker rmi ${INAME}

run:
	@cd scala-play && \
	sbt run

CID:=c2abaccca9ce

dev:
	@docker run -it -v ${PWD}:/scala -w /scala -p 9000:9000 terfno/sbt sh

d/build:
	@docker build -t terfno/play-prac .

d/run:
	@docker run -it -v ${PWD}:/scala -w /scala -p 9000:9000 terfno/play-prac sh

d/start:
	@docker start ${CID}

d/exec:
	@docker exec -it ${CID} sh

d/stop:
	@docker stop ${CID}

d/commit:
	@docker commit ${CID} terfno/play-prac

run:
	@cd scala-play && \
	sbt run

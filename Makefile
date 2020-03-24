dev:
	@docker run -it -v ${PWD}:/scala -w /scala -p 9000:9000 terfno/sbt sh

run:
	cd scala-play && \
	sbt run

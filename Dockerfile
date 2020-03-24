FROM terfno/sbt:latest

RUN apk update && \
  apk add --no-cache make vim

CMD [ "sh" ]

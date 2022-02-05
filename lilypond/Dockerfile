FROM ubuntu:latest

ENV DEBIAN_FRONTEND="noninteractive"
ENV TZ="Europe/London"

RUN apt-get update \
 && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
 && echo $TZ > /etc/timezone \
 && apt-get install -y lilypond

ENTRYPOINT ["lilypond"]

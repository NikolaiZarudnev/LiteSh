FROM ubuntu:xenial

RUN apt-get update && apt-get install -y apt-utils 

RUN apt-get update && apt-get install -y make gcc

WORKDIR /app

ADD ./ /app

RUN make

EXPOSE 2019

ENTRYPOINT ./bin/LiteSH
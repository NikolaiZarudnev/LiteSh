FROM ubuntu:focal

RUN apt-get update && apt-get install -y apt-utils 

RUN apt-get update && apt-get install -y make gcc git

WORKDIR /app

ENTRYPOINT git clone https://github.com/NikolaiZarudnev/LiteSH /app && make
FROM ubuntu:16.04

RUN apt update
RUN apt install git build-essential libssl-dev -y

RUN git clone https://github.com/herumi/cybozulib /srv/cybozulib
COPY . /srv/msoffice

WORKDIR /srv/msoffice
RUN make -j RELEASE=1

ENTRYPOINT ./bin/msoffice-crypt.exe

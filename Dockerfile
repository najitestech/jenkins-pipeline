# syntax=docker/dockerfile:1
FROM centos:latest
RUN apk add --no-cache python2 g++ make
WORKDIR /tmp
COPY . .
RUN sudo yum makecache
RUN sudo yum -y install figlet
EXPOSE 3000

# syntax=docker/dockerfile:1
FROM centos:latest
WORKDIR /tmp
COPY . .
RUN sudo yum makecache
RUN sudo yum -y install figlet
EXPOSE 3000

FROM ubuntu:latest
MAINTAINER yyqq188@foxmail.com
ADD install.sh /
RUN chmod u+x /install.sh
RUN /install.sh

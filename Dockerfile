FROM node:latest
MAINTAINER yudada <yudada0312@gmail.com>

#RUN apk update && apk upgrade
RUN \
mkdir /opt/laravel-echo-server && \
cd /opt/laravel-echo-server && \
npm install -g laravel-echo-server 


EXPOSE 6002

WORKDIR /opt/laravel-echo-server
CMD ["laravel-echo-server", "start"]

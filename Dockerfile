FROM ubuntu:16.04
MAINTAINER swone07@outlook.kr
LABEL purpose="HandOnLabYoungmin"
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /car/www/html
RUN ["/bin/bash","-c","echo welcome to docker automated!! >> test.html"]
EXPOSE 80
CMD ["apachectl","-DFORGROUND"]

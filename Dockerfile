FROM ubuntu:latest
LABEL key=jnareshkumar.pt@gmail.com
#LABEL maintainer "jnareshkumar.pt@gmail.com"

RUN apt-get update  && apt-get -y install apache2
EXPOSE 80

ENTRYPOINT ["/usr/sbin/apachectl"]
CMD ["-D","FOREGROUND"]

COPY index.html /var/www/html/index.html
COPY Header.html /var/www/html/Header.html
COPY HomePage.html /var/www/html/HomePage.html
COPY Image.html /var/www/html/Image.html
COPY LeftPage.html /var/www/html/LeftPage.html
COPY DevOps.html /var/www/html/DevOps.html
COPY PP.jpg /var/www/html/PP.jpg
#COPY . /var/www

VOLUME /var/www/html
FROM ubuntu:latest

LABEL maintainer="jnareshkumar.pt@gmail.com"

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY index.html /var/www/html/index.html
COPY Header.html /var/www/html/Header.html
COPY HomePage.html /var/www/html/HomePage.html
COPY Image.html /var/www/html/Image.html
COPY LeftPage.html /var/www/html/LeftPage.html
COPY DevOpsProject.pdf /var/www/html/DevOpsProject.pdf
COPY PP.jpg /var/www/html/PP.jpg

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apachectl"]
CMD ["-D", "FOREGROUND"]

FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install apache2 -y  
COPY index.html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-DFOREGROUND"]

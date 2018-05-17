FROM ubuntu
MAINTAINER IDCP version: v0.1.0

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

RUN cd ~ && \
    apt-get update && apt-get install -my wget gnupg && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash && \ 
    apt-get install -y nodejs && \
    apt-get install -y supervisor && \
    apt-get install -y build-essential && \
    apt-get install -y mosquitto && \
    apt-get install -y mosquitto-clients && \
    apt-get install -y nginx

#COPY nginx.conf /etc/nginx/nginx.conf
COPY default-nginx /etc/nginx/sites-available/default

ADD main-web /var/www/html/

COPY mosquitto.conf /etc/mosquitto/mosquitto.conf

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

COPY passwd /etc/mosquitto/passwd

EXPOSE 80
EXPOSE 1884

ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf", "--nodaemon"]


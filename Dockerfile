FROM dylanlindgren/docker-laravel-phpfpm
MAINTAINER Sebastien Pujadas http://pujadas.net

RUN apt-get update \
 && apt-get install -y graphviz \
 && apt-get clean

ADD http://www.phpdoc.org/phpDocumentor.phar /usr/local/bin/phpdoc

RUN chmod 755 /usr/local/bin/phpdoc

VOLUME /data
WORKDIR /data
USER www-data

ENTRYPOINT ["php", "/usr/local/bin/phpdoc"]

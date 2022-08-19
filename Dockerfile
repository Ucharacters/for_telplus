FROM phpstorm/php-71-apache-xdebug:latest
RUN mkdir myapp
RUN cd myapp
RUN curl https://raw.githubusercontent.com/Ucharacters/for_telplus/main/index.php >index.php
COPY index.php /var/www/html/
EXPOSE 80
CMD [ "docker", "run", "-it", "phpstorm/php-71-apache-xdebug", "-p", "80:80" ]

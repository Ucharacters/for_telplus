FROM phpstorm/php-71-apache-xdebug:latest
RUN curl https://raw.githubusercontent.com/Ucharacters/for_telplus/main/index.php > /var/www/html/index.php
EXPOSE 80
CMD [ "docker", "run", "-it", "phpstorm/php-71-apache-xdebug", "-p", "80:80" ]

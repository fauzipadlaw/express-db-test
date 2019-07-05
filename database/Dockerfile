FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD root  
ENV MYSQL_DATABASE express_db  
ENV MYSQL_USER default  
ENV MYSQL_PASSWORD default

ADD express_db.sql /docker-entrypoint-initdb.d
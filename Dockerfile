FROM mysql:latest

RUN echo "[mysqld]" >> /etc/mysql/my.cnf \
    && echo "skip-secure-auth" >> /etc/mysql/my.cnf

ENV MYSQL_ROOT_PASSWORD=tu_password\
    MYSQL_DATABASE=tu_database \
    MYSQL_USER=tu_usuario \
    MYSQL_PASSWORD=tu_password

EXPOSE 33060

CMD ["mysqld"]

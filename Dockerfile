FROM postgres:14

WORKDIR /app

ENV POSTGRES_DB=recipeguru
ENV POSTGRES_USER=postgres

COPY init.sql /docker-entrypoint-initdb.d/


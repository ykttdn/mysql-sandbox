FROM mysql:9.0.1-oraclelinux9

RUN microdnf update && \
    microdnf install glibc-langpack-ja

ENV LANG=ja_JP.utf8
ENV TZ=Asia/Tokyo

CMD [ "mysqld" ]

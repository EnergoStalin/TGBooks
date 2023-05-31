FROM ghcr.io/advplyr/audiobookshelf:latest

RUN apk add --update --no-cache python3 python3-dev musl-dev linux-headers fuse3 fuse fuse3-dev gcc && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools tgmount


USER root
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT sh /entrypoint.sh
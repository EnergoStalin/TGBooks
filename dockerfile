FROM alpine:latest

RUN apk add --update --no-cache python3 python3-dev musl-dev linux-headers fuse3 fuse fuse3-dev gcc && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools tgmount
RUN echo user_allow_other > /etc/fuse.conf

LABEL org.opencontainers.image.source https://github.com/energostalin/TGBooks

HEALTHCHECK --interval=5s \
  --timeout=5s \
  --start-period=20s \
  --retries=10 \
  CMD /bin/sh /healthcheck.sh

USER root
COPY ./entrypoint.sh /entrypoint.sh
COPY ./healthcheck.sh /healthcheck.sh
ENTRYPOINT sh /entrypoint.sh
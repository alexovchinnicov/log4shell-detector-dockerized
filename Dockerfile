FROM python:3.10.1-alpine


MAINTAINER  Aleksey Ovchinnikov
LABEL Description="Detector for Log4Shell exploitation attempts"

ARG APP_URL=https://github.com/Neo23x0/log4shell-detector.git

RUN  apk update \
  && apk upgrade \
  && apk add --no-cache tar bash coreutils unzip git



RUN git clone ${APP_URL} /tmp/log4shell-detector \
  && mv /tmp/log4shell-detector/log4shell-detector.py /usr/local/bin \
  && chmod +x /usr/local/bin/log4shell-detector.py \
  && rm -rf /tmp/* 


ENTRYPOINT ["/usr/local/bin/log4shell-detector.py"]

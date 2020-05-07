FROM python:3.8.2-alpine

RUN apk --update add python py-pip openssl ca-certificates py-openssl wget bash linux-headers libstdc++
RUN apk --update add --virtual build-dependencies libffi-dev openssl-dev python-dev py-pip build-base \
  && pip install --upgrade pip \
  && pip install --upgrade pipenv \
  && pip install numpy \
  && apk del build-dependencies


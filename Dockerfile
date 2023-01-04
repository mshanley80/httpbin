FROM ubuntu:20.04

LABEL name="httpbin2022"
LABEL version="0.10.0"
LABEL description="A simple HTTP service."
LABEL org.michaelshanley.vendor="Michael Shanley"

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV PORT=80
ENV HOST="0.0.0.0"
ENV WORKER_TYPE="gevent"

RUN apt update -y && apt install python3-pip git -y && pip3 install --no-cache-dir pipenv

ADD Pipfile Pipfile.lock /httpbin2022/
WORKDIR /httpbin2022

RUN pip install gunicorn && pipenv install --deploy

ADD . /httpbin2022
RUN pip3 install --no-cache-dir /httpbin2022

ENTRYPOINT ["/bin/sh","-c","gunicorn -b $HOST:$PORT  httpbin2022:app -k $WORKER_TYPE"]


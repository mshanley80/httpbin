FROM ubuntu:20.04

LABEL name="httpbin2022"
LABEL version="0.10.0"
LABEL description="A simple HTTP service."
LABEL org.michaelshanley.vendor="Michael Shanley"

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN apt update -y && apt install python3-pip git -y && pip3 install --no-cache-dir pipenv

ADD Pipfile Pipfile.lock /httpbin2022/
WORKDIR /httpbin2022
# RUN /bin/bash -c "pip3 install --no-cache-dir -r <(pipenv lock requirements)"
RUN pip install gunicorn
RUN pipenv install --deploy

ADD . /httpbin2022
RUN pip3 install --no-cache-dir /httpbin2022

EXPOSE 80

# CMD ["gunicorn", "-b", "0.0.0.0:80", "httpbin2022:app", "-k", "gevent"]

FROM ubuntu:latest
MAINTAINER Andrew Monaghan "monaghaa@colorado.edu"

RUN apt-get update && apt-get install -y vim nano python-dev python-pip python-setuptools
RUN pip install translate

COPY text_translate.py /opt/text_translate.py

ENV CODE_DIR="/opt"

CMD ["/usr/bin/python", "/opt/text_translate.py"]

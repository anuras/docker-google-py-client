FROM ubuntu:16.04

# Prerequisites and runtimes
RUN apt-get update
RUN apt-get upgrade -y --fix-missing
RUN apt-get install -y --no-install-recommends \
    build-essential sudo software-properties-common curl \
    python-dev git python-pip python-setuptools python-wheel

# Python libraries
RUN pip install --upgrade pip
RUN pip install --upgrade google-api-python-client oauth2client numpy
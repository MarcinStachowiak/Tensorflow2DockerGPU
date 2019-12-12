FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04
RUN apt-get update && apt-get install -y software-properties-common && add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && apt-get install -y python3.6 python3.6-dev python3-pip

RUN ln -sfn /usr/bin/python3.6 /usr/bin/python3 && ln -sfn /usr/bin/python3 /usr/bin/python && ln -sfn /usr/bin/pip3 /usr/bin/pip

RUN pip --version

COPY requirements.txt requirements.txt
RUN pip install -U -r requirements.txt

RUN mkdir /home/workdir
WORKDIR /home/workdir







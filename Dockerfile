FROM ghcr.io/catthehacker/ubuntu:act-20.04

RUN apt-get update

RUN apt-get install -y \
    python3.8 \
    python3-pip \
    python3.8-venv \
    datalad

COPY requirements.txt .
RUN pip install -r requirements.txt
RUN git clone https://github.com/bids-standard/model-zoo.git
RUN git config --global user.email "you@example.com" && git config --global user.name "Your Name"

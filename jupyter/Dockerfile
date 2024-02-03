FROM python:3.12.1-bookworm

ENV TZ=Asia/Tokyo

RUN apt-get update && \
    apt-get install -y nodejs npm yarn

RUN npm install -g tslab

COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

RUN adduser ubuntu
USER ubuntu

RUN tslab install

WORKDIR /home/ubuntu

ENTRYPOINT ["jupyter", "lab", "--port=80", "--ip=*"]

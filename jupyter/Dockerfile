FROM python:3.12.1-bookworm

ENV TZ=Asia/Tokyo

COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

RUN adduser ubuntu
USER ubuntu
WORKDIR /home/ubuntu

ENTRYPOINT ["jupyter", "lab", "--port=80", "--ip=*"]

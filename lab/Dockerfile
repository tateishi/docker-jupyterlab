FROM jupyter/datascience-notebook:2023-04-10

ARG PASSWD

ENV TZ=Asia/Tokyo

USER jovyan

RUN jupyter server --generate-config
RUN echo "c.ServerApp.password = '${PASSWD}'" >> /home/jovyan/.jupyter/jupyter_server_config.py

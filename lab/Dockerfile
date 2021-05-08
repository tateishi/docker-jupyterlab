FROM jupyter/datascience-notebook

ARG PASSWD

ENV TZ=Asia/Tokyo

RUN pip install --upgrade pip

COPY requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt

USER jovyan

RUN echo "c.NotebookApp.password = '${PASSWD}'" >> /home/jovyan/.jupyter/jupyter_notebook_config.py

RUN jupyter serverextension enable --py jupyterlab

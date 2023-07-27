FROM jupyter/datascience-notebook:2023-07-25

ARG PASSWD

ENV TZ=Asia/Tokyo

USER jovyan


RUN cd .jupyter && jupyterhub --generate-config

RUN echo "c.JupyterHub.authenticator_class='jupyterhub.auth.DummyAuthenticator'" >> /home/jovyan/.jupyter/jupyterhub_config.py

RUN printf '{\n  "IdentityProvider": {\n    "hashed_password": "%s"\n  }\n}\n' "${PASSWD}" > /home/jovyan/.jupyter/jupyter_server_config.json


FROM jupyter/datascience-notebook:2023-07-25

ARG PASSWD

ENV TZ=Asia/Tokyo

USER jovyan


RUN cd .jupyter && jupyterhub --generate-config

RUN echo "c.JupyterHub.authenticator_class='jupyterhub.auth.DummyAuthenticator'" >> /home/jovyan/.jupyter/jupyterhub_config.py

RUN echo '{' >  /home/jovyan/.jupyter/jupyter_server_config.json
RUN echo '  "IdentityProvider": {' >>  /home/jovyan/.jupyter/jupyter_server_config.json
RUN echo -n '    "hashed_password": "' >>  /home/jovyan/.jupyter/jupyter_server_config.json
RUN echo -n "${PASSWD}" >>  /home/jovyan/.jupyter/jupyter_server_config.json
RUN echo '"' >>  /home/jovyan/.jupyter/jupyter_server_config.json
RUN echo '  }' >>  /home/jovyan/.jupyter/jupyter_server_config.json
RUN echo '}' >>  /home/jovyan/.jupyter/jupyter_server_config.json

FROM jupyter/datascience-notebook

ARG PASSWD

ENV TZ=Asia/Tokyo

RUN pip install --upgrade pip

COPY requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt

USER jovyan

RUN curl -O -L https://moji.or.jp/wp-content/ipafont/IPAexfont/IPAexfont00401.zip
RUN unzip IPAexfont00401.zip
RUN cp IPAexfont00401/ipaexg.ttf /opt/conda/lib/python3.9/site-packages/matplotlib/mpl-data/fonts/ttf/ipaexg.ttf
RUN sed -i -e "s/#font.family:.*/font.family: IPAexGothic/" /opt/conda/lib/python3.9/site-packages/matplotlib/mpl-data/matplotlibrc
RUN rm -r ./.cache

RUN echo "c.NotebookApp.password = '${PASSWD}'" >> /home/jovyan/.jupyter/jupyter_notebook_config.py

RUN jupyter serverextension enable --py jupyterlab

FROM python:3.12.1-bookworm

ENV TZ=Asia/Tokyo

COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

RUN adduser ubuntu
USER ubuntu
WORKDIR /home/ubuntu

ENV RUST_HOME /tmp

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > ${RUST_HOME}/rustup.sh \
    && chmod +x ${RUST_HOME}/rustup.sh \
    && ${RUST_HOME}/rustup.sh -y

ENV PATH ${PATH}:${HOME}/.cargo/bin

RUN curl -L -O https://github.com/evcxr/evcxr/releases/download/v0.17.0/evcxr_jupyter-v0.17.0-x86_64-unknown-linux-gnu.tar.gz \
    && tar xvzf evcxr_jupyter-v0.17.0-x86_64-unknown-linux-gnu.tar.gz \
    && mv evcxr_jupyter-v0.17.0-x86_64-unknown-linux-gnu/evcxr_jupyter ${HOME}/.cargo/bin \
    && ${HOME}/.cargo/bin/evcxr_jupyter --install


ENTRYPOINT ["jupyter", "lab", "--port=80", "--ip=*"]

FROM jupyter/minimal-notebook:latest

COPY --chown=1000:0 . /build

WORKDIR /build

RUN python -m pip install -e /build/ && \
    jlpm build

WORKDIR /home/jovyan

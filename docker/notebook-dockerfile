FROM jupyter/minimal-notebook

USER root

WORKDIR /home/jovyan

COPY requirments.txt .

RUN apt update && \
    apt install postgresql-client --yes

RUN pip3 install -r requirments.txt && \
    python3 -m bash_kernel.install

COPY lessons ./lessons
COPY --chown=jovyan --chmod=600 pg-files/.pgpass .
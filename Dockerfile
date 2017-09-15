FROM jupyter/datascience-notebook

USER root

RUN apt-get update && \
	apt-get install -y --no-install-recommends xz-utils curl

COPY requirements.txt ./
RUN pip install --upgrade pip \
    && pip install -r requirements.txt
    
ENTRYPOINT []

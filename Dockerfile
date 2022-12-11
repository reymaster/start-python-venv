FROM python:3.10.2-slim

RUN pip install pipenv && \
    apt-get update && \
    apt install -y git && \
    apt-get update && \
    apt-get install make

RUN useradd -ms /bin/bash python

USER python

WORKDIR /home/python/app

ENV PIPENV_VENV_IN_PROJECT=True

CMD ["tail", "-f", "/dev/null"]
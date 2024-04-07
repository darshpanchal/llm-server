FROM python:3.12

WORKDIR /home

RUN mkdir -p config

RUN mkdir -p models

RUN apt-get update

RUN pip install llama-cpp-python[server]

CMD python -m llama_cpp.server --config_file config/config.json

EXPOSE 8000

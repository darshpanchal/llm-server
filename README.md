## llm-server

Simple Docker script to create an OpenAI compatible server using [llama-cpp-python](https://github.com/abetlen/llama-cpp-python) on port 8000.

### Usage
Build the Docker Container
```
docker build -t llm-server .
```

Run the Docker container
```
docker run -d --name llmserver -p 8000:8000 -v $PWD/config:/home/config -v $PWD/models:/home/models llm-server
```

You can change `config.json` to change port or model information. Supports multiple models, check [llama-cpp-python documentation](https://llama-cpp-python.readthedocs.io/en/latest/server/#configuration-and-multi-model-support).

#### Note: After updating `config.json`, you need to restart the container for changes to take effect.

# strato-notebooks

This a friendly way to develop and test Python code for your Stratoscale cluster.

The docker container includes:
- Stratoscale Python SDK (symphony_client). The SDK version appears in the container name
- AWS boto3 SDK
- Jupyter server [https://jupyter.org/]

*Required:*
Docker on your machine to run the container below

Running the server:

- `docker run -p 8888:8888 --name jupyter -d -i -t stratoscale/jupyter_strato:5.3.2-65b9b21d`
- Open your browser to address localhost:8888

You'll get to the home screen of the Jupyter server. 
At this point you can run of the examples in the _notebooks_ folder 
or upload you your own through the _upload_ button in the home screen. 









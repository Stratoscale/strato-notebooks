# strato-notebooks

This a friendly way to develop and test Python code for your Stratoscale cluster.

The docker container includes:
- Stratoscale Python SDK (symphony_client). The SDK version appears in the container name
- AWS boto3 SDK
- Jupyter server [https://jupyter.org/]

*Required:*
Docker on your machine to run the container below

## If you just want to run Jupyter
- ### Run the server:

    - `docker run -p 8888:8888 --name jupyter -d -i -t stratoscale/jupyter_strato:5.3.2-65b9b21d`
    - Open your browser to address localhost:8888
    - You can now start a new notebook or upload a ready one

## If you want to run Jupyter and get the example notebooks
- ### Clone this repository

- ### Run the server:

    - `docker run -p 8888:8888 -v <full path to repo>/strato-notebooks/notebooks:/root/jupyter/notebooks --name jupyter -d -i -t stratoscale/jupyter_strato:5.3.2-65b9b21d`
    - e.g. `docker run -p 8888:8888 -v /home/myname/workdir/strato-notebooks/notebooks:/root/jupyter/notebooks --name jupyter -d -i -t stratoscale/jupyter_strato:5.3.2-65b9b21d`
    - Open your browser to address localhost:8888

You'll get to the home screen of the Jupyter server. 
At this point you can run of the examples in the _notebooks_ folder 
or upload you your own through the _upload_ button in the home screen. 









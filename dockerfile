FROM stratoscale/symp-cli:5.3.2-65b9b21d

RUN yum upgrade -y 
RUN yum update -y 
RUN yum install -y epel-release
RUN yum install -y python-pip
RUN python -m pip install --upgrade pip
RUN pip install -I setuptools

# Jupyter
RUN python -m pip install jupyter
RUN ipython profile create
RUN ipython locate
COPY ipython_config.py /root/.ipython/profile_default/ipython_config.py
RUN mkdir -p /root/jupyter/notebooks
WORKDIR /root/jupyter/

# Jupyter extensions
RUN pip install jupyter_contrib_nbextensions
RUN jupyter contrib nbextension install --system
RUN jupyter nbextension enable hinterland/hinterland

# AWS boto3
RUN python -m pip install boto3 --user

ENTRYPOINT ["jupyter","notebook","--allow-root","--no-browser","--ip","0.0.0.0","--NotebookApp.token=''"]

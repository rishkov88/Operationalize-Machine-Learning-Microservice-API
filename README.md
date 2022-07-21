[![CircleCI](https://dl.circleci.com/status-badge/img/gh/rishkov88/Operationalize-Machine-Learning-Microservice-API/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/rishkov88/Operationalize-Machine-Learning-Microservice-API/tree/main)

---
## Project Overview

There is a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

---
### Project Tasks

Goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. Tasks in this project:
* Build a Frontend to accept user input data and produce a prediction
* Test project code using linting
* Complete a Dockerfile to containerize this application
* Deploy containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Integrate with CircleCI to indicate that your code has been tested

---

## Files Explaination

`Dockerfile` - Contains commands used to create a docker image  
`Makefile` - Contains useful set of commands to setup environment, run tests and run lints  
`app.py` - Python flask app that returns predictions about housing prices when requested using API calls  
`make_prediction.sh` - Send API request to Flash app running and receives response  
`run_docker.sh` - Script to build and run docker image locally  
`upload_docker.sh` - Script to tag and upload docker image to docker hub  
`run_kubernetes.sh` - Script to setup and run app on kubernetes  
`.circleci/config.yml`: CircleCI configuration file for running the tests  
`templates/index.html`: Frontend of this project where you can send input and receive a prediction  
`static/`: Frontend assets

---

## Intall

A working environment like `AWS Cloud9` with an instance of at least 2vcpu and 2GB of memory is required to deploy this application.


---

## Setup the Environment

* Create a virtualenv with Python and activate it. 
```bash
python3 -m venv <path-of-virtualenv>
source <path-of-virtualenv>/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

a. To start a local cluster:  
`minikube start --driver=none`

b. To deploy this application in kubernetes:  
`./run_kubernetes.sh`

c. When the pod is up and running, make predictions using:  
`./make_prediction.sh`

d. Delete the cluster after your done:  
`minikube delete`
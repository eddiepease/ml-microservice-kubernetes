# Machine Learning Model Deployment

[![CircleCI](https://circleci.com/gh/eddiepease/ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/eddiepease/ml-microservice-kubernetes)


This repo takes a Flask web app (containing a machine learning model), and provides functionality to build a docker container, deploy it to DockerHub and run it locally on Kubernetes.
The machine learning model is trained on the famous Boston housing dataset, which can be [here](https://www.kaggle.com/c/boston-housing) on Kaggle.

## Setup

After cloning this repo and navigating to the root directory, below are the instructions for building and deploying the model:

Setup the environment:
* Run ```make setup```
* Run ```make install```

To build the docker image: 
* Run ```./run_docker.sh```

To deploy to DockerHub:
* Change the DockerID in ```upload_docker.sh```
* Run ```./upload_docker.sh```

To deploy locally to Kubernetes:
* Install minikube and associated dependencies on your machine
* Run ```./run_kubernetes.sh```

To make a prediction:
* Change the parameters in ```make_prediction.sh``` to desired inputs
* Run ```make_predictions.sh```

## Files
* ```app.py``` - main Flask app
* ```Dockerfile``` - used to build the docker image
* ```make_prediction.sh``` - bash file to make predictions on running model
* ```Makefile``` - automating commmon commands
* ```requirement.txt``` - packages to install
* ```run_docker.sh``` - build docker image and run locally
* ```run_kubernetes.sh``` - run kubernetes cluster locally
* ```upload_docker.sh``` - upload built docker image to DockerHub
#!/bin/bash

# set default ENV vars

export PROJECT=YOUR_PROJECT

gcloud config set project ${PROJECT}

export ZONE=us-central1-c
gcloud config set compute/zone ${ZONE}

# NAA. Note $HOME/src
export KFAPP_HOME=$HOME/src/kubeflow-tutorial
export DEPLOYMENT_NAME=kubeflow
export KFAPP=kfapp

# NA. NOTE: not using basic authentication
#gcloud auth application-default login
#export KUBEFLOW_USERNAME=YOUR_KUBEFLOW_USER_NAME
#export KUBEFLOW_PASSWORD=...
#gcloud auth application-default print-access-token

# NA. NOTE: using IAP approach
export CLIENT_ID=YOUR_IAP_CLIENT_ID
export CLIENT_SECRET=YOUR_IAP_CLIENT_SECRET

export NAMESPACE=kfapp-kubeflow
export USERNAME=kfapp-notebook-gpu

export BUCKET_NAME=${PROJECT}-${DEPLOYMENT_NAME}-bucket

export WORKING_DIR=$HOME/src/examples/mnist
# NAA. Hacks to make MNIST client deploy to work
export WORKING_DIRX=$HOME/src/kubeflow-tutorial/4_WORKING_DIRX

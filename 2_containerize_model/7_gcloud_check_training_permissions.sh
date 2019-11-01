#!/bin/bash

# NOTE: This is DEPLOYMENT_NAME not KFAPP
#gcloud iam service-accounts list | grep ${KFAPP}
gcloud iam service-accounts list | grep ${DEPLOYMENT_NAME}
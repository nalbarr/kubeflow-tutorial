#!/bin/bash

export VERSION_TAG=$(date +%s)
export IMAGE_NAME=gcr.io/${PROJECT}/${DEPLOYMENT_NAME}-train
export TRAIN_IMG_PATH=gcr.io/${PROJECT}/${DEPLOYMENT_NAME}-train:${VERSION_TAG}

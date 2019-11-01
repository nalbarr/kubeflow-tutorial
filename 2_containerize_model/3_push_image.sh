#!/bin/bash

gcloud auth configure-docker --quiet

docker push ${TRAIN_IMG_PATH}
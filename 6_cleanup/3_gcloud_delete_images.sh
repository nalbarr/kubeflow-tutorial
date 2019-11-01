#!/bin/bash

#Find the digest id for each container image:
#gcloud container images list-tags gcr.io/${PROJECT}/${DEPLOYMENT_NAME}-train
#gcloud container images list-tags gcr.io/${PROJECT}/${DEPLOYMENT_NAME}-web-ui

#Delete each image:
#gcloud container images delete gcr.io/$PROJECT/${DEPLOYMENT_NAME}-train:$DIGEST_ID
#gcloud container images delete gcr.io/$PROJECT/${DEPLOYMENT_NAME}-web-ui:$DIGEST_ID


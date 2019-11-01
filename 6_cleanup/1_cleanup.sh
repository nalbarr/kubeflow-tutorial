#!/bin/bash

gcloud deployment-manager --project=${PROJECT} deployments delete ${DEPLOYMENT_NAME}

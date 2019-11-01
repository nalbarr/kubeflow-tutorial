#!/bin/bash

kubectl describe -n $DEPLOYMENT_NAME secret user-gcp-sa
# NAA. This does not return what we expect but is working regardless?

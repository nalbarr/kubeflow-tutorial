#!/bin/bash

# get credentials of k8s cluster to access KFAPP

gcloud container clusters get-credentials ${KFAPP} --zone ${ZONE} --project ${PROJECT}

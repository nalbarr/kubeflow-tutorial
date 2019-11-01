#!/bin/bash

# delete deplyents, clean up generated KFAPP files

gcloud deployment-manager --project=${PROJECT} deployments delete ${KFAPP}
gcloud deployment-manager --project=${PROJECT} deployments delete ${KFAPP}-storage

DIR=./$KFAPP
[ -d $DIR ] && echo "$DIR exists."
#[ -d $DIR ] && rm -fr $DIR
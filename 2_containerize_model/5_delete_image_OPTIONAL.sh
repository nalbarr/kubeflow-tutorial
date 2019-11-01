#!/bin/bash

ARG1=$1
ARG2=$2

if [ -z $ARG1 ] && [ -z $ARG2 ]
then
    echo "IMAGE_NAME, TAG required."
else
    gcloud container images delete $ARG1:$ARG2
fi

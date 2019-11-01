#!/bin/bash

# initalize KFAPP configuration

ARG1=$PROJECT
ARG2=$ZONE
ARG3=$KFAPP

if [ -d ./$KFAPP ]
then
	echo "previous kfctl configuration exists at $KFAPP. Removing $KFAPP/."
	rm -fr ./$KFAPP
fi

if [ -z $ARG1 ] || [ -z $ARG2 ] || [ -z $ARG3 ]
then
        echo "PROJECT, ZONE, KFAPP required."
else
        export CONFIG="https://raw.githubusercontent.com/kubeflow/kubeflow/c54401e/bootstrap/config/kfctl_gcp_iap.0.6.2.yaml"
        kfctl init ${KFAPP} --project=${PROJECT} --config=${CONFIG} -V
fi

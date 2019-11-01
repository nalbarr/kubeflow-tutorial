#!/bin/bash

# build k8s cluster; apply KFAPP configuration

ARG1=$ZONE
ARG2=$KFAPP

if [ -z $ARG1 ] || [ -z $ARG2 ]
then
        echo "ZONE, KFAPP reuired."
else
        pushd ${KFAPP}
        kfctl apply all -V
	popd
fi

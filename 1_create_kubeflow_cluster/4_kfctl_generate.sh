#!/bin/bash

# generate KFAPP configuration

ARG1=$ZONE
ARG2=$KFAPP

if [ -z $ARG1 ] || [ -z $ARG2 ]
then
        echo "ZONE, KFAPP reuired."
else
        pushd ${KFAPP}
        kfctl generate all -V --zone ${ZONE}
	popd
fi

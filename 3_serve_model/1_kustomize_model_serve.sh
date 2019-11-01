#!/bin/bash

ARG1=$EXPORT_DIR

if [ -z $ARG1 ]
then
	echo "ARG1 required as EXPORT_DIR"
else
	pushd ${WORKING_DIR}/serving/GCS
	kustomize edit add configmap mnist-map-serving   --from-literal=name=mnist-gcs-dist
	kustomize edit add configmap mnist-map-serving   --from-literal=modelBasePath=${EXPORT_DIR}
	popd
fi

#!/bin/bash

pushd ${WORKING_DIR}/serving/GCS

kustomize build . |kubectl apply -f -

popd

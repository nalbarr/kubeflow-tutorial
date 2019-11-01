#!/bin/bash

pushd ${WORKING_DIR}/training/GCS

kustomize build . |kubectl apply -f -

popd

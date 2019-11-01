#!/bin/bash

pushd ${WORKING_DIRX}/front

# manually change deployment.yaml to match ${UI_IMG_PATH}
# NAA. Use kustomize?

# deploy front end to cluster
kustomize build . | kubectl apply -f -

popd

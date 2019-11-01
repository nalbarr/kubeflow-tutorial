#!/bin/bash

pushd ${WORKING_DIR}/training/GCS

kustomize edit add configmap mnist-map-training --from-literal=secretName=user-gcp-sa
kustomize edit add configmap mnist-map-training --from-literal=secretMountPath=/var/secrets
# NAA. This works.  Kustomize must use GOOGLE_APPLICATION_CREDENTIALS as a key for substitution
# Do not get confused in thinking you need to past the secret within.
kustomize edit add configmap mnist-map-training --from-literal=GOOGLE_APPLICATION_CREDENTIALS=/var/secrets/user-gcp-sa.json

popd
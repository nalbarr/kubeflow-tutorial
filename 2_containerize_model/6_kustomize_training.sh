#!/bin/bash

pushd ${WORKING_DIR}/training/GCS

kustomize edit add configmap mnist-map-training   --from-literal=name=mnist-train-dist

kustomize edit set image training-image=${TRAIN_IMG_PATH}

../base/definition.sh --numPs 1 --numWorkers 2

kustomize edit add configmap mnist-map-training   --from-literal=trainSteps=200
kustomize edit add configmap mnist-map-training   --from-literal=batchSize=100
kustomize edit add configmap mnist-map-training   --from-literal=learningRate=0.01

kustomize edit add configmap mnist-map-training   --from-literal=modelDir=gs://${BUCKET_NAME}/
kustomize edit add configmap mnist-map-training   --from-literal=exportDir=gs://${BUCKET_NAME}/export

popd
#!/bin/bash

gcloud container clusters get-credentials kfapp --zone us-central1-c --project mnist-kubeflow-254921 \
 && kubectl port-forward --namespace kubeflow $(kubectl get pod --namespace kubeflow --selector="app=web-ui" --output jsonpath='{.items[0].metadata.name}') 8080:5000

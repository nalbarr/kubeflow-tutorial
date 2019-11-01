#!/bin/bash

echo "Get TFJob"
kubectl get tfjobs -n $DEPLOYMENT_NAME -o yaml mnist-train-dist
echo ""

echo "Dump container log"
kubectl logs -n $DEPLOYMENT_NAME mnist-train-dist-chief-0

#!/bin/bash

# dump out env vars

echo "PROJECT_ID: "
gcloud config get-value project
echo ""

echo "ZONE: "
gcloud config get-value compute/zone
echo ""

echo "DEPLOYMENT_NAME: " $DEPLOYMENT_NAME
echo ""

echo "KFAPP_HOME: " $KFAPP_HOME
echo ""

echo "KFAPP: " $KFAPP
echo ""

# NA. NOTE: not using basic authentication
#echo "KUBEFLOW_USERNAME: " $KUBEFLOW_USERNAME
#echo "KUBEFLOW_PASSWORD: " $KUBEFLOW_PASSWORD
#echo ""

echo "CLIENT_ID: " $CLIENT_ID
echo ""

echo "CLIENT_SECRET: " $CLIENT_SECRET
echo ""

echo "BUCKET_NAME: " $BUCKET_NAME
echo ""

echo "WORKING_DIR: " $WORKING_DIR
echo ""
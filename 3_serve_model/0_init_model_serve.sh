#!/bin/bash

export EXPORT_DIR_NAME=export
export EXPORT_DIR=`gsutil ls gs://$BUCKET_NAME  | grep $EXPORT_DIR_NAME`
#gs://mnist-kubeflow-254921-kubeflow-bucket/export/

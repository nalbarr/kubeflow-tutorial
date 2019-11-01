#!/bin/bash

pushd ${KFAPP_HOME}

git clone https://github.com/kubeflow/examples.git

cd examples/mnist
export WORKING_DIR=$(pwd)

popd

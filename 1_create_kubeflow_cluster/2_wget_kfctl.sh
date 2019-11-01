#!/bin/bash


# pull latest kfctl from
# https://github.com/kubeflow/kubeflow/releases/
wget https://github.com/kubeflow/kubeflow/releases/download/v0.6.2/kfctl_v0.6.2_linux.tar.gz
tar -xvf kfctl_v0.6.2_linux.tar.gz

# NOTE: make sure $HOME/bin added to .bashrc $PATH
mv kfctl $HOME/bin

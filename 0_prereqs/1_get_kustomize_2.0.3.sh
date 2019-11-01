#!/bin/bash

wget https://github.com/kubernetes-sigs/kustomize/releases/download/v2.0.3/kustomize_2.0.3_linux_amd64
mv kustomize_2.0.3_linux_amd64 $HOME/bin/kustomize
chmod +x $HOME/bin/kustomize
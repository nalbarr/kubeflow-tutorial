#!/bin/bash

# check to see if jupyter notebook pod exists

kubectl -n $NAMESPACE describe pods jupyter-$USERNAME

#!/bin/bash

export MNIST_CLIENT_IMG=mnist_client
#export MAIN_ENTRYPOINT=flask_server.py


# NAA.
# ARG not passing properly?
#docker build --build-arg MAIN_ENTRYPOINT=$MAIN_ENTRYPOINT \
#--rm -f Dockerfile \
#-t $MNIST_CLIENT_IMG .

docker build --rm -f Dockerfile \
	-t $MNIST_CLIENT_IMG .


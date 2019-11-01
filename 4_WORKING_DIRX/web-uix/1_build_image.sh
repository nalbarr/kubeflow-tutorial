#!/bin/bash

export HELLO_FLASK_IMG=hello_flask
export MAIN_ENTRYPOINT=hello_flask.py

docker build --build-arg MAIN_ENTRYPOINT=$MAIN_ENTRYPOINT \
	--rm -f Dockerfile \
	-t $HELLO_FLASK_IMG .


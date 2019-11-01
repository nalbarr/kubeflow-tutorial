SRC: flask_server.py
MNIST_CLIENT_IMG = flask_server

clean:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

build:
	pylint $(SRC)

build-image:
	docker build --rm -f Dockerfile -t $(MNIST_CLIENT_IMG) .

run-image: 
	#docker run --rm -it --entrypoint /bin/bash $(MNIST_CLIENT_IMG):latest
	docker run --rm -it -p 6006:6006 -p 8080:8080 $(MNIST_CLIENT_IMG):latest

all: clean build build-image run-image

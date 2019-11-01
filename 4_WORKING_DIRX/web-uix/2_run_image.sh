#!/bin/bash

# NAA. Use this to debug into container shell as root
#docker run --rm -it --entrypoint /bin/bash $MNIST_CLIENT_IMG:latest 

# NAA. Use this to run boot strap console app
#docker run $MNIST_CLIENT:latest

# NAA. Use this to run flask server
docker run --rm -it -p 5000:5000 $HELLO_FLASK_IMG:latest

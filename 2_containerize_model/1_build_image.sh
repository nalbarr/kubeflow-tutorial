#/bin/bash

ARG1=$VERSION_TAG
ARG2=$IMAGE_NAME
ARG3=$TRAIN_IMG_PATH

if [ -z $ARG1 ] || [ -z $ARG2 ] || [ -z $ARG3 ]
then
        echo "VERSION_TAG, IMAGE_NAME, TRAIN_IMG_PATH required."
else
    docker build $WORKING_DIR -t $TRAIN_IMG_PATH -f $WORKING_DIR/Dockerfile.model
fi
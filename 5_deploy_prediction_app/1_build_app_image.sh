#!/bin/bash

#pushd ${WORKING_DIR}
pushd ${WORKING_DIRX}

export UI_IMG_PATH=gcr.io/${PROJECT}/${DEPLOYMENT_NAME}-web-ui

#docker build ${WORKING_DIR}/web-ui -t ${UI_IMG_PATH}
docker build ${WORKING_DIRX}/web-ui -t ${UI_IMG_PATH}

popd

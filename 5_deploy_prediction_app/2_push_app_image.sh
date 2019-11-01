#!/bin/bash

gcloud auth configure-docker --quiet

docker push ${UI_IMG_PATH}

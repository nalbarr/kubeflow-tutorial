# Set up

### Configure Cloud Shell
- virtualenv venv
- source venv/bin/activate
- pip install -r requirements.txt

## Deploying Kubeflow

-Set up a GCP Project
-Set up OAuth for Cloud IAP
-(Skip - Deploy using UI) Deploy using CLI
-Monitor Cloud IAP Setup
-Delete using CLI

### Set up a GCP Project

### Set up OAuth for Cloud IAP
- see Google docs

### (Skip - Deploy using UI) Deploy using CLI

### Monitor Cloud IAP Setup

### Delete using CLI

## Key environment variables
- KFAPP_HOME
- PROJECT
- ZONE
- DEPLOYMENT_NAME=kubeflow
- KFAPP=kfapp
- CLIENT_ID=<...>
- CLIENT_SECRET=<...>
- NAMESPACE=
- USERNAME=

## Decisions
- Not using basic authentication in order to properly set up IAP (but takes longer)
- 
- *** How to make ephemeral?

## Dependencies
- IAM configuration
  - need CLIENT_ID
  - need CLIENT_SECRET
  - configure approved domain (i.e., $KFAPP.cloud.goog)
  - specific redirect url with embedded $CLIENT_ID

## If need clean up
- remove 1_create_cluster/$KFAPP dir which are generated configuration files

## Set-up cluster

## Containerize model

## Server model

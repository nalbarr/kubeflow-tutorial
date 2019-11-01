# Set up

### Dependencies

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
- skip this as we want to automate

### Monitor Cloud IAP Setup
- NOTE: this can take up to 20 min !!!
- requires configuring DNS and also setting proxy with LetsEncrypt, certificates

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
- Manually copy example code for debugging and hacking things to work

## Dependencies
- IAM configuration
  - need CLIENT_ID
  - need CLIENT_SECRET
  - configure approved domain (i.e., $KFAPP.cloud.goog)
  - specific redirect url with embedded $CLIENT_ID

## If need clean up
- remove 1_create_cluster/$KFAPP dir which are generated configuration files

## Set-up cluster
NOTE: all script execution assumes source <script> to gain access to ENV variables
- cd 1_create_kubeflow_cluster
  - 0_get_project_files.sh
  - 1_gcloud_create_credential.sh
  - 2_wget_kfctl.sh
    - download kfctl_v0.6.2_linux.tar.gz
    - uncompress and install to $HOME/bin 
    - set PATH=$PATH:$HOME/bin/kfctl
  - 3_kfctl_config.sh
  - 4_kfctl_generate.sh
  - 5_kfctl_apply.sh
  - 6_gcloud_list_deploys.sh
  - 7_gcloud_delete_deploys_OPTIONAL.sh
  - 8_gcloud_get_credentials.sh
  - 9_kubectl_get_all.sh
  - 10_nslookup_dns.sh
  - 11_kubectl_get_jupyter_pods.sh
  - 12_gutil_create_bucket.sh
  - 13_gutil_delete_bucket_OPTIONAL.sh
  - 14_gcloud_iam_policies.sh
  - NOTE: will generate $KFAPP directory (e.g., kfapp)

## Containerize model
- cd 2_containersize_model
  - 0_init_model_train.sh
  - 1_build_image.sh
  - 2_run_image.sh
  - 3_push_image.sh
  - 4_list_images.sh
  - 5_delete_image_OPTIONAL.sh
  - 6_kustomize_training.sh
  - 7_gcloud_check_training_permissions.sh
  - 8_kubectl_get_secret.sh
  - 9_kustomize_set_secret.sh
  - 10_kubectl_apply_train_job.sh
  - 11_kubectl_jobs.sh

## Server model
- cd 3_serve_model
  - 0_init_model_server.sh; z_dump_model_serve_env.sh
  - 1_kustomize_model_serve.sh
  - 2_kubectl_apply_model_serve.sh
  - 3_kubectl_check_deploy_sh

## Stage
- NOTE: 4_WORKING_DIRX is a local copy of example MNIST app since I needed to hack some of original source to work
- inspect front, webu-ui, web-uix dirs for full code

## Deploy prediction approved
- cd 5_deploy_prediction_app
  - 0_init_app.sh; z_dump_app_env.sh
  - 1_build_app_image.sh
  - 2_push_app_image.sh
  - 3_list_app_image.sh
  - 4_deploy_app.sh
  - 5_browse_app.sh
  - 6_debug_app.sh
  - 7_dump_pod_logs.sh
  - 8_run_app_image.sh
  - 9_login_image.sh

## Clean up
- cd 6_cleanup
  - 1_cleanup.sh
  - 2_gsutil_delete_bucket.sh
  - 3_gcloud_delete_images.sh
- NOTE: alternate method is to delete PROJECT


## Next
- *** How to make ephemeral?
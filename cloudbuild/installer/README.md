# [Terragrunt](https://github.com/gruntwork-io/terragrunt) cloud builder

This document and code was sourced [from this repo location](https://github.com/GoogleCloudPlatform/cloud-builders-community/tree/master/terragrunt).

## Terragrunt cloud builder

This builder can be used to run the terragrunt tool in the GCE. Terragrunt [product page](https://github.com/gruntwork-io/terragrunt) is a wrapper for Terraform [product page](https://www.terraform.io/):

### Building this builder

To build this builder, run the following command in this directory.

```sh
$ gcloud auth login
$ gcloud config set project build-project-id
$ gcloud builds submit --config=cloudbuild.yaml --substitutions _REGISTRY_PROJECT_ID=registry-project-id .
```

## Using this builder

### Terragrunt backend

Terragrunt builder is based on Terraform builder [link](https://github.com/GoogleCloudPlatform/cloud-builders-community/tree/master/terraform). Most of the details about backend are the same as for terraform. Please check examples for the differences and example configuration [link](examples/gcs_backend/README.markdown)

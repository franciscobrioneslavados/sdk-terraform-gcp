
## Setup environment

## SDK

### Install sdk, see [sdk-install](https://cloud.google.com/sdk/docs/install)

##### replace <NAME> and export or create a sh file and run with ```source <file-name>.sh```
```
export PROJECT_ID=<PROJECT_ID>
export REGION=<REGION>
export ZONE=<ZONE>
export CLUSTER_NAME=<CLUSTER_NAME>
export DOCKER_APP_NAME=<DOCKER_APP_NAME>
export SQL_INSTANCE_NAME=<SQL_INSTANCE_NAME>
export SQL_INSTANCE_PASSWORD=<SQL_INSTANCE_PASSWORD>
```

### Deploy cluster see [cluster-readme](./cluster/README.md)

### Deployments and Services YML see [k8s-readme](./k8s/README.md)

### Push Image on GCP Imagen Registry see [docker-readme](./docker/README.md)

### Create a Cloud SQL instance [sql-readme](./sql/README.md)
  
## Terraform 
  
### Install cli see [terraform-install](https://learn.hashicorp.com/tutorials/terraform/install-cli)
### Prepare terraform: change the values on vars.tf
### download a services account JSON from the google cloud see [services-account-docs](https://cloud.google.com/iam/docs/service-accounts)
  
```
cd terraform
terraform init
terraform plan
terraform apply --auto-approve
```
  

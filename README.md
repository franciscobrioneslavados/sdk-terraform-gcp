# Deploy Cluster SDK Way

```
export PROJECT_ID=stately-avatar-334702
export REGION=us-central1
export ZONE=us-central1-c
export CLUSTER_NAME=learnk8s-cluster
export TF_CLUSTER_NAME=learnk8s-cluster-tf

```

### Enable GCP APIS
```
gcloud services enable compute.googleapis.com
gcloud services enable container.googleapis.com
```

### UTILS COMMANDS
```
gcloud container clusters list
```

### CREATE A CLUSTER 
```
gcloud container clusters create $(echo $CLUSTER_NAME) --zone $(echo $ZONE)
```
#### result example: 
```
NAME              LOCATION       MASTER_VERSION   MASTER_IP      MACHINE_TYPE  NODE_VERSION     NUM_NODES  STATUS
learnk8s-cluster  us-central1-c  1.21.5-gke.1302  35.226.18.135  e2-medium     1.21.5-gke.1302  3          RUNNING
```

### Conect to a cluster
```
gcloud container clusters get-credentials $(echo $CLUSTER_NAME) --zone $(echo $ZONE) --project $(echo $PROJECT_ID)
```


### UPDATE Cluster (OPTIONAL)
```
gcloud container clusters update $(echo $CLUSTER_NAME) \
  --enable-autoscaling \
  --node-pool default-pool \
  --zone $(echo $ZONE) \
  --project $(echo $PROJECT_ID) \
  --min-nodes 3 \
  --max-nodes 5
```

### Inspect Cluster
```
gcloud container clusters describe $(echo $CLUSTER_NAME) --zone $(echo $ZONE)
```

### Delete Cluster
```
gcloud container clusters delete $(echo $CLUSTER_NAME) --zone $(echo $ZONE)
```

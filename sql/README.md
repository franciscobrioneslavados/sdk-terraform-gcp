#### create instance cloud sql
```
gcloud sql instances create $(echo $SQL_INSTANCE_NAME) --database-version=POSTGRES_12 --cpu=2 --memory=8GiB --zone=$(echo $ZONE) --root-password=$(echo $SQL_INSTANCE_PASSWORD) --require-ssl
```

### delete instance 
```
gcloud sql instances delete $(echo $SQL_INSTANCE_NAME) --async
```
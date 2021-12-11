### Docker preprare a local image to push on a gcp container registry

### build a image
```
docker build -t gcr.io/$(echo $PROJECT_ID)/$(echo $DOCKER_APP_NAME):latest .
```

```
docker push gcr.io/$(echo $PROJECT_ID)/$(echo $DOCKER_APP_NAME):latest
```
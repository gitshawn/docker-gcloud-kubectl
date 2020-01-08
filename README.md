# docker-gcloud-kubectl

GCloud, kubectl, docker in docker, in a Docker container. What makes this one a little different is that it will take your JSON keyfile for a service account as an environment variable. Good for CI tools like Drone or Concourse. 

One way to run:
```
docker run -it --rm \
-e JSONCREDS='{a whole bunch of stuff that you'd find in a GCP provided JSON keyfile}' \
sfriedel/gcloud-kubectl
```

This will run an interactive container, to authenticate gcloud, run:
```
gcloud auth activate-service-account --key-file=/keyfile.json
```

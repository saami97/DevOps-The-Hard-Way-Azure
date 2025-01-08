# Push Image To ACR

The ACR repo will be where you store the Docker image that you created in the previous lab.

## Log Into The ACR Repository
1. Log in to ACR with Azure CLI

Ensure to change the name of the registry to the name of your registry.

```
az acr login --name mycontainerregistry
```

## Tag The Docker image
1. Tag the Docker image

This will consist of:
- The name of the Docker image
- The name of the container registry and the path

For example, if my container registry name is `devopsthehardway` and my container image is `py`, the container
registry path to tag is going to be `devopsthehardway.azurecr.io/py:v1`
`docker tag py devopsthehardway.azurecr.io/py:v1`

## Push The Docker Image To ACR
1. Push the Docker image to ACR
`docker push devopsthehardway.azurecr.io/py:v1`

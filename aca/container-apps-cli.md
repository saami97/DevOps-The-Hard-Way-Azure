1. First, add the `containerapp` extension.

```
az extension add --name containerapp --upgrade
```

2. Next, register the providers for `OperationalInsights` and `Microsoft.App`.
```
az provider register --namespace Microsoft.App

az provider register --namespace Microsoft.OperationalInsights

```

3. Deploy the app.

**One Thing To Note**

When deploying to Azure Container Apps with an image from ACR, you have to give ACA specific permissions to
ACR even if you've run the `acr login` command from the same terminal that you're using to deploy to ACA.

You'll see in the `az containerapp create` command three flags:
`--registry-server`
`--registry-username`
`--registry-password`

You can pull this information from your ACR under **Settings > Access keys**

As an example, let's say I set the following when pushing the container image to ACR:
- A registry name of **devopsthehardway** with a container image called **py**
- If I want the app to mimic what I called the container image, the name would be **py**
- The port number when I built the container image, which is **5000**

My config would look like the following:

az containerapp env create \
--name mypywebappenvironment \
--resource-group devrelasaservice \
--location eastus

```
az containerapp create \
--name py \
--image devopsthehardway.azurecr.io/py:v1 \
--ingress external \
--environment mypywebappenvironment \
--resource-group devrelasaservice \
--target-port 5000 \
--registry-server devopsthehardway.azurecr.io \
--registry-username devopsthehardway \
--registry-password *password-obtained-from-acr-access-keys*
```
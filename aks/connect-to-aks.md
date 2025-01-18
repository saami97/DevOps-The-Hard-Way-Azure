Connecting to an AKS cluster allows you to automatically update your local `kubeconfig` with the correct authentication and permissions per your logged in account on the Azure portal to properly connect to your Kubernetes cluster.

1. To update your local `kubeconfig` with the AKS cluster, it's a simply command:

```
az aks get-credentials -n CLUSTER_NAME -g RG_NAME
```

For example, if I had a cluster named **devopsaks** and a Resource Group named **dev**, the command would be:

```
az aks get-credentials -n devopsaks -g dev
```

2. You should now be able to confirm you're connected to the AKS cluster:

```
kubectl get nodes
```
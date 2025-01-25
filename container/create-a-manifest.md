Throughout the labs, you've done everything from create the container image to deploy it to various container services and even learn various ways to create an AKS cluster. Now that you have all of that underneath your belt, it's time to see what deploying the containerized application you built looks like.

Luckily, you have all of the prereqs already done which are:
1. Create a container registry
2. Containerize the app

Now it's just a matter of calling that application with a Kubernetes Manifest.

When creating a Kubernetes Manifest, you have a few options:

1. Deployment
2. StatefulSet
3. DaemonSet

You can also deploy individual Pods, but because they don't have a high level Controller behind them which helps with self-healing (ensuring that if a Pod goes down, a new one comes up), it's best to pick one of the three high level Controllers.

For the purposes of this lab, you'll use a Deployment.

If you've never created/deployed a Kubernetes Manifest before, you can find a full break down from this amazing blog post: https://8grams.medium.com/kubernetes-101-yaml-manifest-c60da98922e3

1. Copy the following YAML and ensure that you change the `image` path as that'll need to be your ACR.

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: pyweb
spec:
  selector:
    matchLabels:
      app: pyweb
  replicas: 2
  template:
    metadata:
      labels:
        app: pyweb
    spec:
      containers:
      - name: pyweb
        image: devopsthehardway.azurecr.io/py:v1
        ports:
        - containerPort: 5001
---
apiVersion: v1
kind: Service
metadata:
  name: pyweb
spec:
  selector:
    app: pyweb
  ports:
    - protocol: TCP
      port: 80
      targetPort: 5001
```

2. Save it to a file called `deployment.yaml`.

3. Run the following command:

```
kubectl apply -f deployment.yaml
```

4. Run the following command to ensure that the Pods are running:

```
kubectl get pods
```

A quick note on `apply` vs `create`:

When you use `apply`, you can modify the Kubernetes Manifest (for example, change the replica count) and re-run `kubectl apply`. The running Deployment will get updated almost like a patch.

If you use `create`, you can not re-run the Manifest. You'll have to run `kubectl delete -f deployment.yaml` and then re-deploy.

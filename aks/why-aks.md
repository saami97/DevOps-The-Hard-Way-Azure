In the two previous labs, you learned how to deploy an Azure Container App both from a UI perspective and a CLI perspective. From an Application Modernization perspective, ACA makes sense for a few reasons:

1. To test and confirm the container actually works.
2. If you want to containerize an application without worrying about managing Kubernetes.

The second point makes the most sense. You want to use containers without having the overhead of Kubernetes.

I'm not going to steer you in any particular direction. Instead, I'll lay out some facts to keep in mind.

Azure Container Apps are great. There are several containerization services like AWS ECS and GCP Cloud Run. The only thing to keep in mind with these is if you reach a point where you want to get a bit more "vendor agnostic", thinking about higher levels of managing scalability and performance, and want to use third-party tools/addons like GitOps, resource optimization tools, and different deployment methods, you'll be stuck with migrating from one of these containerization services to Kubernetes.

Whereas if you start out with Kubernetes, you'll already have the k8s manifests and primitives defined.

On the other side of it, how, for example, AKS works vs how EKS or GKE works differs a bit. It's all Kubernetes underneath the hood, but each cloud provider sprinkles a little "goodness" on top to make it integrate better with specific services. For example, using Azure Active Directory (Entra) for RBAC is very easy in AKS. You could also use it in EKS or GKE, but there's far more configuration required.

tldr; if you're planning on running this long-term and have a larger application stack, think about the pros and cons prior to deploying.
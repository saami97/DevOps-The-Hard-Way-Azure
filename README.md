# DevOps-The-Hard-Way-Azure
"DevOps-The-Hard-Way-AWS" got a lot of traction, so I figured I'd make one for Azure!

This tutorial contains a full, real-world solution for setting up an environment that uses DevOps/Platform/SRE/Whatever Else You Want To Call It technologies and practices for deploying apps and cloud services/cloud infrastructure to Azure.

The repository contains free labs, documentation, diagrams, and docs for setting up an entire workflow and DevOps environment from a real-world perspective in Azure.

## DevOps/SRE/Platform/Cloud Engineering Scenario
The scenario that you're currently facing is you work in an organization that is very monolithic. There is a ton of bare metal, virtualization, manual deployments of applications, and old school practices based on the current teams knowledge of IT.

You're brought into the company and team to make things more modern so the organization can not only succeed, but stay ahead of their competition. Management now understands the needs and complexity that comes with staying ahead of their competition and they know that they need to. Otherwise, the organization will fall...

## DevOps Solution
The solution is to deploy a video/streaming-based UI app. Currently, this solution is sitting on a bunch of baremetal, but it's time to sprinkle a little DevOps on it.



As a DevOps Engineer, you're more or less (most likely) not writing the app, but instead, deploying, managing, maintaining, and securing it. That's why you're not writing your own app in this tutorial.

## Technology Details
You will be using the following technologies and platforms to set up a DevOps environment.

1. Azure
    - Azure will be used to host the application, cloud infrastructure, and any other services we may need to ensure the app is deployed properly.
2. GitHub
    - To store the application and infrastructure/automation code.
3. Python
    - Python will be used for automation efforts that aren't in Terraform. It's also what the application is built on!
4. Terraform
   - To create any infrastructure (like an AKS cluster) or other services (key vault, storage, etc etc.).
5. Docker
   - Create a Docker image.
   - Store the Docker image in Azure ACR.
6. Kubernetes
   - To run the Docker image that's created for the containerized Uber app. Kubernetes, in this case, EKS, will be used to orchestrate the container.
7. CI/CD
   - Use GitHub Actions to create an AKS cluster.
8. Automated testing
    - Testing Terraform code with Checkov.
  
## Labs

**THE FOLLOWING LABS ARE STILL BEING WORKED ON SO IF A LINK DOESN'T WORK THAT'S WHY**

1. [Prerequisites](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-Azure/blob/main/prerequisites.md)

2. Azure:
    - [Create An Azure Account](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-Azure/blob/main/azure-setup/create-account.md)
    - [Log Into Azure Programmatically](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-Azure/blob/main/azure-setup/cli-setup.md)

3. Container - The purpose of the Container section is to create a Docker image for the app that the organization is running on-prem (the UI app), containerize it, and store the container inside of a container repository. For the container repo, you'll use Azure ACR.
    - [Create The Docker Image](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-Azure/blob/main/container/create-docker-image.md)
    - [Create ACR](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-Azure/blob/main/container/create-acr.md)
    - [Push Container Image](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-Azure/blob/main/container/push-image.md)
    - [Container Image Scanning]()

4. Terraform - The purpose of the Terraform section is to create all of the Azure cloud services you'll need from an environment/infrastructure perspective to run the UI application.
    - [Test Out Azure Container Apps Via The UI](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-Azure/blob/main/aca/container-apps-ui.md)
    - [Test Out Azure Container Apps Via The CLI](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-Azure/blob/main/aca/container-apps-cli.md)
    - [Why Choose AKS](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-Azure/blob/main/aks/why-aks.md)
    - [Create An AKS Cluster](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-Azure/blob/main/aks/aks-terraform/create.md)
    - [Create An AKS Cluster Using Cilium](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-Azure/blob/main/aks/aks-terraform/create.md)

5. CICD - The purpose of this section is to automatically create an AKS cluster with CICD using GitHub Actions
    - [Set Up Secrets](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-Azure/blob/main/automated-deployments/cicd/github_actions/secrets.md)
    - [Configure Pipeline](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-Azure/blob/main/automated-deployments/cicd/github_actions/pipeline.md)

6. Kubernetes - The purpose of the Kubernetes section is to connect to AKS locally and to write the Kubernetes manifest to deploy the UI app.
    - [Connect To AKS From The Terminal](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-Azure/blob/main/aks/connect-to-aks.md)
    - [Create A Kubernetes Manifest](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-Azure/blob/main/container/create-a-manifest.md)

7. Security - Proper security is the make or break between a successful environment and a successful outage with a ton of bad press around your company. These labs will go over a few different methods of security in Azure for AKS.
    - [Security Dashboard On AKS]()
    - [Cluster Scanning]()

8. Automated Deployments - The purpose of this section is to set up GitOps, which is a way to deploy apps automatically with the notion that the current state (the cluster) is the desired state (the k8s manifests)
    - [Run ArgoCD]()
    - [Use The Built-In AKS GitOps Service]()

9. Monitoring and Observability - No environment or application stack is complete with proper monitoring and observability (metrics, traces, logs). This section will show 2 methods of setting up monitoring and observability
    - [Deploy The Grafana/Prometheus/Loki/Temp Stack]()
    - [Use Built-In AKS Monitoring And Observability]()

10. Scaling - Without your application(s) performing as expected, engineers are led to late-night calls, angry customers, and unhappy management. This section will show a few ways to ensure proper resource and cost optimization.
    - [Implementing Karpenter]()

11. Kubernetes GUI - Sometimes engineers want a way to see Kubernetes outside of the CLI and YAML. They want a visual. Microsoft Headlamp allows you to view your k8s cluster without having to use `kubectl`.
    - [Implementing Headlamp]()

    
**BONUS LABS**
1. [Run Wasm On Kubernetes]()
1. [Run A Llama Model As A Pod]()


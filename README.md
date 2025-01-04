# DevOps-The-Hard-Way-Azure
"DevOps-The-Hard-Way-AWS" got a lot of traction, so I figured I'd make one for Azure!

This tutorial contains a full, real-world solution for setting up an environment that uses DevOps/Platform/SRE/Whatever Else You Want To Call It technologies and practices for deploying apps and cloud services/cloud infrastructure to Azure.

The repository contains free labs, documentation, diagrams, and docs for setting up an entire workflow and DevOps environment from a real-world perspective in Azure.

## DevOps/SRE/Platform/Cloud Engineering Scenario
The scenario that you're currently facing is you work in an organization that is very monolithic. There is a ton of bare metal, virtualization, manual deployments of applications, and old school practices based on the current teams knowledge of IT.

You're brought into the company and team to make things more modern so the organization can not only succeed, but stay ahead of their competition. Management now understands the needs and complexity that comes with staying ahead of their competition and they know that they need to. Otherwise, the organization will fall...

## DevOps Solution
The solution is to deploy the [app_incoming]. Currently, this solution is sitting on a bunch of baremetal, but it's time to sprinkle a little DevOps on it.



As a DevOps Engineer, you're more or less (most likely) not writing the app, but instead, deploying, managing, maintaining, and securing it. That's why you're not writing your own app in this tutorial.

## Technology Details
You will be using the following technologies and platforms to set up a DevOps environment.

1. Azure
    - Azure will be used to host the application, cloud infrastructure, and any other services we may need to ensure the app is deployed properly.
2. GitHub
    - To store the application and infrastructure/automation code
3. Python
    - Python will be used for automation efforts that aren't in Terraform.
4. Terraform
   - To create any infrastructure (like an AKS cluster) or other services (key vault, storage, etc etc.)
5. Docker
   - Create a Docker image
   - Store the Docker image in AWS ECR
6. Kubernetes
   - To run the Docker image that's created for the containerized Uber app. Kubernetes, in this case, EKS, will be used to orchestrate the container.
7. CI/CD
   - Use GitHub Actions to create an EKS cluster
8. Automated testing
    - Testing Terraform code with Checkov
  
## Labs

In this directory, you will find the `main.tf` and `variable.tf` for both AKS with the Azure CNI and AKS with Cilium.

If you're wondering which one you should choose, it's going to be based off of use case.

With Cilium, you have the ability to remove:
- Remove `kube-proxy`
- Replace `iptables` with `eBPF`

There are pros and cons that take up books and books, so it wouldn't be fair to give a "pick this one or that one" statement. However, if utilizing eBPF sounds interesting to you from a scalability (over `iptables`) and security perspective, choose the Cilium option.

Please note that to use Terraform with Azure, you'll need to be programmatically logged in. You already did that in the labs in section 1.

If you want to run the Terraform configuration via CICD, you'll need to set up authentication and authorization to Azure via the CICD platform you're using. Luckily, there will be labs coming up for that in the next section.

For whichever option you choose (standalone AKS or AKS with cilium), please remember to fill in the variables in the `variable.tf` file.
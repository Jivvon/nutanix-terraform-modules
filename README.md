# Nutanix Terraform Modules

Terraform module for bootstrapping a resources on Nutanix.

## Contents

- [**Quick start**](#quick-start)
- [**Prerequisites**](#prerequisites)

## Prerequisites

In order to use this module, make sure to meet the following prerequisites.

### Terraform

Install Terraform as described in the [Terraform documentation](https://learn.hashicorp.com/tutorials/terraform/install-cli).

If you use macOS, you can simply do:

```bash
brew install terraform
```

## Quick start

configure variables with `terraform.tfvars.sample`:

```hcl
cluster_name = "[prism_cluster_name]"

username = "[prism_username]"
password = "[prism_password]"
endpoint = "[prism_endpoint]"

subnet_info = {
  name = "[subnet_name]"
  vlan_id = "[subnet_vlan_id]"
  subnet_ip = "[subnet_subnet_ip]"
}
```

Now, run the following commands:

```bash
# nutanix-terraform-modules/example
terraform init
terraform plan
terraform apply
```

Type `yes` to proceed.

> If you want to skip the interactive dialog and automatically proceed, you can use `terraform apply --auto-approve`.

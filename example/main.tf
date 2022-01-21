terraform {
  required_providers {
    nutanix = {
      source  = "nutanix/nutanix"
      version = "1.2.2"
    }
  }
}

provider "nutanix" {
  username     = var.username
  password     = var.password
  endpoint     = var.endpoint
  insecure     = true
  wait_timeout = 60
}

data "nutanix_cluster" "cluster" {
  name = var.cluster_name
}

module "subnet" {
  source = "../modules/subnet"
  cluster_id = data.nutanix_cluster.cluster.id

  name = var.subnet_info.name
  vlan_id = var.subnet_info.vlan_id
  subnet_ip = var.subnet_info.subnet_ip
}

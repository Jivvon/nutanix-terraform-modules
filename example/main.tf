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

### subnet module ###
module "subnet" {
  source = "../modules/subnet"
  cluster_id = data.nutanix_cluster.cluster.id

  name = var.subnet_info.name
  vlan_id = var.subnet_info.vlan_id
  subnet_ip = var.subnet_info.subnet_ip
}

### vm module ###
data "nutanix_image" "vm_image" {
  image_name = var.vm_info.image_name
}

module "vm" {
  source = "../modules/vm"
  cluster_id = data.nutanix_cluster.cluster.id

  name = var.vm_info.name
  num_vcpus_per_socket = var.vm_info.cpu
  memory_size_gib = var.vm_info.memory
  disk_size_gib = var.vm_info.disk

  image_id = data.nutanix_image.vm_image.id

  subnet_id = module.subnet.id
  subnet_ip_endpoint = var.vm_info.ip
}

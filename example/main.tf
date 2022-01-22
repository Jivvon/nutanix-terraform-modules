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
  source     = "../modules/subnet"
  cluster_id = data.nutanix_cluster.cluster.id

  name      = var.subnet_info.name
  vlan_id   = var.subnet_info.vlan_id
  subnet_ip = var.subnet_info.subnet_ip
}

### vm module ###
data "nutanix_image" "vm_image" {
  count      = length(var.vm_info_list)
  image_name = element(var.vm_info_list.*.image_name, count.index)
}

module "vm" {
  source = "../modules/vm"
  count  = length(var.vm_info_list)

  cluster_id           = data.nutanix_cluster.cluster.id
  name                 = element(var.vm_info_list.*.name, count.index)
  num_vcpus_per_socket = element(var.vm_info_list.*.cpu, count.index)
  memory_size_gib      = element(var.vm_info_list.*.memory, count.index)
  disk_size_gib        = element(var.vm_info_list.*.disk, count.index)

  image_id = element(data.nutanix_image.vm_image.*.id, count.index)

  subnet_id          = module.subnet.id
  subnet_ip_endpoint = element(var.vm_info_list.*.ip, count.index)
}

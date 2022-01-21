terraform {
  required_providers {
    nutanix = {
      source  = "nutanix/nutanix"
      version = "1.2.2"
    }
  }
}

resource "nutanix_subnet" "subnet" {
  cluster_uuid = var.cluster_id

  name = var.name
  vlan_id = var.vlan_id
  subnet_ip = var.subnet_ip
  subnet_type  = var.subnet_type
  prefix_length = var.prefix_length
}

terraform {
  required_providers {
    nutanix = {
      source  = "nutanix/nutanix"
      version = "1.2.2"
    }
  }
}

resource "nutanix_virtual_machine" "vm" {
  name                 = var.name
  cluster_uuid         = var.cluster_id
  num_vcpus_per_socket = var.num_vcpus_per_socket
  num_sockets          = var.num_sockets
  memory_size_mib      = var.memory_size_gib * 1024

  guest_customization_cloud_init_user_data = var.guest_customization_cloud_init_user_data

  disk_list {
    disk_size_mib         = var.disk_size_gib * 1024 # GB
    data_source_reference = {
      kind = "image"
      uuid = var.image_id
    }
  }

  nic_list {
    subnet_uuid = var.subnet_id
    ip_endpoint_list {
      type = "ASSIGNED"
      ip   = var.subnet_ip_endpoint
    }
  }
}

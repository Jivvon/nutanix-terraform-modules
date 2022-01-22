variable "cluster_name" {
  type = string
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}

variable "endpoint" {
  type = string
}

variable "subnet_info" {
  description = "subnet info example : [name(subnet_user)], [vlan_id(10)], [subnet_ip(192.168.10.0)]"
  type        = object({
    name      = string
    vlan_id   = number
    subnet_ip = string
  })
}

variable "vm_info_list" {
  description = "The List of multiple vms' info"
  type        = list(object({
    name       = string
    cpu        = number
    memory     = number
    disk       = number
    image_name = string
    ip         = string
  }))
}

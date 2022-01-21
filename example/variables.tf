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
  type = map(any)
  default = {
    name = null
    vlan_id = null
    subnet_ip = null
  }
}

variable "vm_info" {
  description = "vm info"
  type = map(any)
  default = {
    name = null
    cpu = null
    memory = null
    disk = null
    image_name = null
    ip = null
  }
}

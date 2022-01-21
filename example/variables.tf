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

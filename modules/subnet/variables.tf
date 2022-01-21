variable "cluster_id" {
  type = string
  default = null
}

variable "name" {
  type = string
  default = null
}

variable "vlan_id" {
  type = string
  default = null
}

variable "subnet_ip" {
  type = string
  default = null
}

variable "subnet_type" {
  type = string
  default = "VLAN"
}

variable "prefix_length" {
  type = string
  default = 24
}

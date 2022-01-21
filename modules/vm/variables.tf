variable "name" {
  type = string
  default = null
}

variable "cluster_id" {
  type = string
  default = null
}

variable "num_vcpus_per_socket" {
  type = string
  default = 2
}

variable "num_sockets" {
  type = string
  default = 1
}

variable "memory_size_gib" {
  type = string
  default = 4
}

variable "image_id" {
  type = string
  default = null
}

variable "disk_size_gib" {
  type = string
  default = 20
}

variable "subnet_id" {
  type = string
  default = null
}

variable "subnet_ip_endpoint" {
  type = string
  default = null
}


variable "name" {
  type    = string
  default = null
}

variable "cluster_id" {
  type    = string
  default = null
}

variable "num_vcpus_per_socket" {
  type    = number
  default = 2
}

variable "num_sockets" {
  type    = number
  default = 1
}

variable "memory_size_gib" {
  type    = number
  default = 4
}

variable "guest_customization_cloud_init_user_data" {
  type    = string
  default = null
}

variable "image_id" {
  type    = string
  default = null
}

variable "disk_size_gib" {
  type    = number
  default = 20
}

variable "subnet_id" {
  type    = string
  default = null
}

variable "subnet_ip_endpoint" {
  type    = string
  default = null
}


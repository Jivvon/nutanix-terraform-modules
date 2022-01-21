output "user" {
  value = "${var.cluster_name} : ${var.username}"
}

output "subnet" {
  description = "jwjeong's subnet"
  value       = "${module.subnet.name} : ${module.subnet.network_ip_address}"
}

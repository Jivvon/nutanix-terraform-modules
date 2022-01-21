output "name" {
  description = "Name of the subnet"
  value = nutanix_subnet.subnet.name
}

output "network_ip_address" {
  description = "Network IP Address/Prefix Length of the subnet"
  value = "${nutanix_subnet.subnet.subnet_ip}/${nutanix_subnet.subnet.prefix_length}"
}

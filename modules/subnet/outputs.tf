output "name" {
  description = "Name of the subnet"
  value = nutanix_subnet.subnet.name
}

output "id" {
  description = "ID of the subnet"
  value = nutanix_subnet.subnet.id
}

output "ip" {
  description = "IP of the subnet"
  value = nutanix_subnet.subnet.subnet_ip
}

output "network_ip_address" {
  description = "Network IP Address/Prefix Length of the subnet"
  value = "${nutanix_subnet.subnet.subnet_ip}/${nutanix_subnet.subnet.prefix_length}"
}

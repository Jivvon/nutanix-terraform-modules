output "user" {
  value = "${var.cluster_name} : ${var.username}"
}

output "subnet" {
  description = "jwjeong's subnet"
  value       = "${module.subnet.name} : ${module.subnet.network_ip_address}"
}

output "vm" {
  description = "jwjeong's vm"
  value       = "[${module.vm.name}]\nvCPU: ${module.vm.vm_vCPU}\nMemory: ${module.vm.vm_memory}\nDisk: ${module.vm.vm_disk}"
}

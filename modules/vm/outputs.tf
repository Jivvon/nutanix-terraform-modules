output "name" {
  description = "Name of the vm"
  value = nutanix_virtual_machine.vm.name
}

output "vm_vCPU" {
  description = "vCPU(s) of the vm"
  value = "vCPU(s): ${nutanix_virtual_machine.vm.num_vcpus_per_socket * nutanix_virtual_machine.vm.num_sockets}"
}

output "vm_memory" {
  description = "Memory of the vm"
  value = "Memory: ${nutanix_virtual_machine.vm.memory_size_mib / 1024}GB"
}

output "vm_disk" {
  description = "Disk of the vm"
  value = "Disk: ${nutanix_virtual_machine.vm.disk_list[1].disk_size_mib / 1024}GB"
}

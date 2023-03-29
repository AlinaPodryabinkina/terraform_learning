output "private_key" {
  description = "The private key for connection to Virtual Machine"
  value       = module.virtual_machine.*.private_key
}


output "username" {
  description = "The username for connection to Virtual Machine"
  value       = module.virtual_machine.*.username
}


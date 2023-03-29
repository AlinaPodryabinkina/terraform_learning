output "vm_name" {
  description = "The Name of vm"
  value       = google_compute_instance.virtual_instance.*.name
}
output "private_key" {
  description = "The private key for connection to Virtual Machine"
  value       = nonsensitive(tls_private_key.ssh.private_key_pem)

}
output "username" {
  description = "The username for connection to Virtual Machine"
  value       = random_string.user.result
}

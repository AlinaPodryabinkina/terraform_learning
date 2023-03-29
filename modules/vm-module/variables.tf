variable "vpc_network_name" {
  type = string
}
variable "subnetwork_name" {
  type = string
}

variable "static_ip_name" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "size_vm" {
  type = string
}
variable "vm_image" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "zone" {
  type = string
}

variable "tags" {
  type = list(any)
}
variable "target_tags" {
  type = list(any)
}

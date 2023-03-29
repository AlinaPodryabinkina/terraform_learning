variable "project" {
  type = string
}

variable "auto_create_subnetworks" {
  type = bool
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "vpc_network_name" {
  type = string
}

variable "subnetwork_name" {
  type = string
}

variable "subnetwork_ip_cidr_range" {
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

variable "firewall_name" {
  type = string
}

variable "allow_protocol" {
  type = string
}

variable "allow_ports" {
  type = list(any)
}

variable "source_ranges_network" {
  type = list(any)
}

variable "tags" {
  type = list(any)
}

variable "target_tags" {
  type = list(any)
}

variable "count" {
  type = numder
}

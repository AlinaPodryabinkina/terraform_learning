module "network" {
  source                   = "../modules/vpc-module"
  region                   = var.region
  auto_create_subnetworks  = var.auto_create_subnetworks
  vpc_network_name         = var.vpc_network_name
  subnetwork_name          = var.subnetwork_name
  subnetwork_ip_cidr_range = var.subnetwork_ip_cidr_range
  firewall_name            = var.firewall_name
  allow_protocol           = var.allow_protocol
  allow_ports              = var.allow_ports
  source_ranges_network    = var.source_ranges_network
  tags                     = var.tags
  target_tags              = var.target_tags
}

module "virtual_machine" {
  source           = "../modules/vm-module"
  count            = var.count
  vm_name          = "${var.vm_name}-${count.index + 1}"
  size_vm          = var.size_vm
  machine_type     = var.machine_type
  vpc_network_name = module.network.vnet_name
  subnetwork_name  = module.network.subnet_name
  static_ip_name   = "${var.static_ip_name}-${count.index + 1}"
  vm_image         = var.vm_image
  zone             = var.zone
  tags             = var.tags
  target_tags      = var.target_tags
}



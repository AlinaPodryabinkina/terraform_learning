resource "google_compute_address" "static" {
  name = var.static_ip_name
}

resource "tls_private_key" "ssh" {
  algorithm = "RSA"
  rsa_bits  = "4096"
}

resource "random_string" "user" {
  length = 8
}

resource "google_compute_instance" "virtual_instance" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone
  tags         = setunion(var.tags, var.target_tags)


  boot_disk {
    initialize_params {
      size  = var.size_vm
      image = var.vm_image
    }
  }

  network_interface {
    network    = var.vpc_network_name
    subnetwork = var.subnetwork_name

    access_config {
      nat_ip = google_compute_address.static.address
    }
  }

  metadata = {
    ssh-keys = "${random_string.user.result}:${tls_private_key.ssh.public_key_openssh}"
  }
}

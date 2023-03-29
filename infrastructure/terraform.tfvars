project = "even-metrics-368812"


auto_create_subnetworks = "false"


region = "europe-central2"


zone   = "europe-central2-a"


vpc_network_name = "first-vpc"


subnetwork_name = "my-subnet"


subnetwork_ip_cidr_range = "10.130.0.0/20"


static_ip_name = "ipv4-address"


vm_name = "vm"


size_vm = "10"


vm_image = "debian-cloud/debian-11"


machine_type = "e2-micro"


firewall_name = "network-firewall"


allow_protocol = "tcp"


allow_ports   = ["22", "80", "443"]


source_ranges_network = ["0.0.0.0/0"]


tags = [
    "development",
    "podryabinkina"
]


target_tags = ["http-server", "https-server"]


count = 3



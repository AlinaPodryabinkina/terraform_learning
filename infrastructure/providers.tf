provider "google" {

  project = var.project
  region  = var.region
  zone    = var.zone

}

terraform {
  backend "gcs" {
    bucket = "iac-tf-ap"
    prefix = "terraform/state_test"
  }
}

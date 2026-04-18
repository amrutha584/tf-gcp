resource "google_compute_network" "gcpnetwork" {

  name = var.gcpnetwork
  auto_create_subnetworks = "false"
  
  
}

resource "google_compute_subnetwork" "gcpsubnet" {

  name = var.gcpsubnet
  network = google_compute_network.gcpnetwork.id
  ip_cidr_range = "10.1.0.0/24"
  region = "us-central1"
  project = var.project_id
  
  
}

resource "google_compute_subnetwork" "gcpsubnet2" {
  

  name = var.gcpsubnet2
  region = var.location2
  ip_cidr_range = "10.2.0.0/24"
  project = var.project_id
  network = google_compute_network.gcpnetwork.id

}

resource "google_compute_firewall" "allowssh" {
  
  name = var.allowssh
  network = google_compute_network.gcpnetwork.id

  allow {
    
    protocol = "tcp"
    ports = [ "22" ]
  }

  source_ranges = [ "0.0.0.0/0" ]
  target_tags = [ "ssh-enabled" ]
}


resource "google_compute_network" "gcpnetwork-peering" {

  name = "network-peering"
  auto_create_subnetworks = "false"
  
  
}

resource "google_compute_subnetwork" "gcppeeringsubnet" {

  name = "peering-subnet"
  network = google_compute_network.gcpnetwork-peering
  ip_cidr_range = "10.3.0.0/24"
  region = "us-central1"
  project = "gcp-devops-493505"
  
  
}
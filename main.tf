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
  ip_cidr_range = "10.1.0.0/24"
  project = var.project_id
  network = google_compute_network.gcpnetwork.id

}
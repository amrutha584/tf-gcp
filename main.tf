resource "google_storage_bucket" "storage-bucket" {
  
  name= "tfgcp-bucket"
  location = "us-central1"
      project= "terrafor-project-483505"
  storage_class = "standard"
  force_destroy = true
}
resource "google_storage_bucket" "storage-bucket" {
  
  name= var.bucket_name
  location = var.location
  project= var.project_id
  storage_class = var.storage_class
  force_destroy = var.force_destroy
}
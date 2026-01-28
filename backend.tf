terraform {
  backend "gcs" {
    bucket="tfgcp-bucket"
    prefix= "terraform/state"    
  }
}
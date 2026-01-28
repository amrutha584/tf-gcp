terraform {
  backend "gcs" {
    bucket="statefilebucket"
    prefix= "terraform/state"    
  }
}
terraform {
  backend "gcs" {
    bucket="statefilebucket14"
    prefix= "terraform/state"    
  }
}
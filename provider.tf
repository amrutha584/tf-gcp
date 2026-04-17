terraform {
  required_providers {
    google={
        source = "hashicorp/google"
        version = "~> 5.0"
    }
  }
}

provider "google" {

    region = "us-central1"
    project= "gcpdata-492209"

}

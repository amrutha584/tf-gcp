resource "google_storage_bucket" "storage-bucket" {
  
  name= var.bucket_name
  location = var.location
  project= var.project_id
  storage_class = var.storage_class
  force_destroy = var.force_destroy
}

resource "google_sql_database_instance" "sqlserver_trial" {
  name             = var.sql_server_name
  location = var.location
  project= var.project_id
  database_version = "SQLSERVER_2019_EXPRESS" # free-friendly edition

  settings {
    tier = "db-custom-1-3840" # small tier to save credits
    backup_configuration {
      enabled = true
    }
  }

  root_password = "TrialPassword123!"
  deletion_protection = false
}

resource "google_sql_user" "trial_user" {
  name     = "testuser"
  instance = google_sql_database_instance.sqlserver_trial.name
  password = "SecureTrialPass!"
}


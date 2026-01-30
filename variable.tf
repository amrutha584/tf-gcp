variable "project_id" {

    description = "this to know the project id"
    type = string
  
}

variable "location" {

    description = "this to know the project id"
    type = string
  
}

variable "storage_class" {

    description = "this to know the project id"
    type = string
    default     = "STANDARD"
  
}

variable "force_destroy" {

    description = "this to know the project id"
    type        = bool
    default     = false

  
}

variable "bucket_name" {
  description = "Name of the storage bucket"
  type        = string
}

variable "project_id" {

    description = "this to know the project id"
    type = string
  
}

variable "location" {

    description = "this to know the project id"
    type = string
  
}


variable "gcpnetwork" {
  description = "used for vpc creation"
  type        = string
}

variable "gcpsubnet" {
  description = "used for vpc creation"
  type        = string
}
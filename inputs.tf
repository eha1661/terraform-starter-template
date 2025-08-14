###################################
# Tags
###################################

variable "team" {
  description = "the teaum who handles the product [GLOBAL]"
  type        = string
}


###################################
# Accounts and envirnements settings
###################################

variable "environment" {
  description = "the owner of the application [GLOBAL]"
  type        = string
}

###################################
# Product/project  settings
###################################

variable "product" {
  description = "the tag of the application name [GLOBAL]"
  type        = string
}

variable "suffix" {
  description = "suffix name [GLOBAL]"
  type        = string
  default     = ""
}


########################################
# Terraform remote state configuration #
########################################

variable "remote_state_bucket" {
  description = "The S3 bucket for remote state storage"
  type        = string
}

variable "remote_state_key" {
  description = "The S3 key for the remote state file"
  type        = string
}


###################################
# Resource settings
###################################

variable "enable_container_insights" {
  description = "Enable Container insight for the cluster"
  type        = bool
  default     = false
}
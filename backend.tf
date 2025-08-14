# ---------------------------------------------------------------------------------
# INSTRUCTIONS:
# To select your backend configuration:
# - For LOCAL backend: Ensure the 'terraform { backend "local" ... }' block is uncommented and the S3 backend block is commented.
# - For REMOTE S3 backend: Uncomment the 'terraform { backend "s3" ... }' block and comment out the local backend block.
# Only one backend block should be active at a time.
# ---------------------------------------------------------------------------------




###################################
# Terraform Backend Configuration #
###################################

# # Remote 
terraform {
  backend "s3" {
    bucket       = "<S3_Bucket Name>"
    region       = "us-east-1"
    key          = "<TF_STATE_FILENAME>.tfstate"
    encrypt      = true
    use_lockfile = true # Enabling S3 State Locking
  }
}


# Local 

# terraform {
#   backend "local" {
#     path = "terraform.tfstate"
#   }
# }

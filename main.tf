
###################################
# Provider Configuration
###################################

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      ManagedBy      = "Terraform"
      TerraformState = "S3://${var.remote_state_bucket}/${var.remote_state_key}"         
      Environment    = var.environment
      Product        = var.product
      Team           = var.team
    }
  }
}


################################################################################
# AWS vars related 
################################################################################

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}


################################################################################
# Existing infra
################################################################################


################################################################################
# Locals
################################################################################

locals {
  Var_name = "${var.product}-${var.environment}-test"
}

###################################
# Infra
###################################


resource "aws_ecs_cluster" "this" {
  name = "${var.product}-${var.environment}-ecs-cluster"

  setting {
    name  = "containerInsights"
    value = var.enable_container_insights ? "enabled" : "disabled"
  }
}
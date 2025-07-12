terraform {

#     backend "remote_backend" {
#         storage_account_name = "myterraformstate"
#         container_name       = "tfstate"
#         key                  = "terraform.tfstate"
#         resource_group_name  = "myResourceGroup"
        
#   }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.109.0"
    }
  }
}

provider "azurerm" {
  features { 
    resource_group {
      prevent_deletion_if_contains_resources = true
    }
  }
  # subscription_id = "5434828b-4299-46cb-9433-bee373d4ad6b"
}
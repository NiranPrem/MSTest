terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-backend"
    storage_account_name = "stniranterraform2026"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}
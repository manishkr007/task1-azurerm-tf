terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.29.0"
    }
  }
  backend "local" {
    path = "state-file-local/terraform.tfstate"
  }
}
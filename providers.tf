terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"  # Ensure this is a supported version
    }
  }
}

provider "azurerm" {
  features {}  # This is REQUIRED
}

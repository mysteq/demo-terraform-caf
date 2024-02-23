terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.93.0"
    }
  }
  backend "azurerm" {
    subscription_id      = "87e43d6c-337a-44f8-b908-c4b12dd914a9"
    resource_group_name  = "rg-tfstate-01"
    storage_account_name = "tfstatecaf453523"
    container_name       = "tfstatecaf453523"
    key                  = "tfstatecaf453523.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "87e43d6c-337a-44f8-b908-c4b12dd914a9"
  tenant_id       = "2044f836-f4df-477c-a129-cfa16a9c16cd"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.33.0"
    }
  }
   backend "azurerm" {
  }
}

provider "azurerm" {
  features {}
  subscription_id = "92e22e38-2f32-450c-97de-3c896645b2da"
}
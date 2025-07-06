terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0"
    }
    azapi = {
      source  = "azure/azapi"
      version = ">=1.5"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.1"
    }
  }

  # backend "azurerm" {
  #   tenant_id = "97c8d8b0-a676-45d8-989f-d8f28f10b304" # Asad
  #   resource_group_name = "rg-shr-backend"                # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
  #   storage_account_name = "sashrbackend"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
  #   container_name       = "backendtfstate"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
  #   key                  = "terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  # }
}

provider "azurerm" {
  features {}
  # shabib_habib@anjumshahzad1gmail.onmicrosoft.com
  subscription_id = "3fed4955-0ed0-4498-a979-f538b3d003fa" # Anjum
  tenant_id       = "a48eab87-24b1-4572-911e-b400063847f4" # Anjum
  #subscription_id = "c304578b-dc41-48d3-8f5d-9fd044837909" #paid devops_shr
  #tenant_id       = "957cc191-4a53-42a0-8421-025ca749bf48" #paid devops_shr
}

#resource "random_pet" "rg_name" { # random_pet is a resource that generates a random string
#  prefix = var.resource_group_name_prefix
#}

resource "random_string" "myrand1len6" {
  length  = 6
  upper   = false
  special = false
}


resource "random_string" "myrand2len4" {
  length  = 4
  upper   = false
  special = false
}




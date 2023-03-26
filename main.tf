terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.48.0"
    }
  }
}

provider "azurerm" {
features {}
tenant_id = "3993cace-eb5c-41c2-bf87-2a57e936eb03"
subscription_id = "0399180b-abf0-406e-9040-3167d88c1060"
client_id = "e6f1f810-ade7-4de8-87dd-f6bb83845021"
client_secret = "hG28Q~rbm5cShajBypLDGxdj~1Wb87ztgNPMZaoU"

}


module "dss_rg" {
    source = "git@github.com:praveen2391/tfpoc-resources.git//resource-group"
    rg-name = var.dss-rg-name
    rg-location = var.dss-rg-location
    
}

module "dss_vnet"{
    source = "git@github.com:praveen2391/tfpoc-resources.git//virtual-network"
    vnet-name = var.dss-vnet-name
    rg-location = var.dss-rg-location
    rg-name = var.dss-rg-name
    adddress-space = var.dss-address-space
    dns-servers = var.dss-dns-servers
    environment = var.dss-environment

}
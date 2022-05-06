resource "random_string" "name_suffix" {
  length           = 5  
  special          = false
  lower            = true
}

resource "azurerm_app_service_plan" "appservice" {
  name                = local.appservice_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  kind                = var.appservice_os
  reserved            = false

  sku {
    tier     = var.appservice_tier
    size     = var.appservice_size
    capacity = var.appservice_capacity
  }
}
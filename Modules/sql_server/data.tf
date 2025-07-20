data "azurerm_key_vault" "kv" {
  name                = var.key_vault
  resource_group_name = var.resource_group_name
}

data "azurerm_key_vault_secret" "username" {
  name         = var.username1
  key_vault_id = data.azurerm_key_vault.kv.id
}

data "azurerm_key_vault_secret" "password" {
  name         = var.password1
  key_vault_id = data.azurerm_key_vault.kv.id
}
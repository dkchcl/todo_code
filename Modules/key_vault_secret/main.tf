resource "azurerm_key_vault_secret" "kvs1" {
  name         = var.username
  value        = var.vmusername
  key_vault_id = data.azurerm_key_vault.kv1.id
}

resource "azurerm_key_vault_secret" "kvs2" {
  name         = var.password
  value        = var.vmpassword
  key_vault_id = data.azurerm_key_vault.kv1.id
}

resource "azurerm_key_vault_secret" "kvs3" {
  name         = var.username1
  value        = var.sqlusername
  key_vault_id = data.azurerm_key_vault.kv1.id
}

resource "azurerm_key_vault_secret" "kvs4" {
  name         = var.password1
  value        = var.sqlpassword
  key_vault_id = data.azurerm_key_vault.kv1.id
}


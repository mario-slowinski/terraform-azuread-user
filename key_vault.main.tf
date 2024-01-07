resource "azurerm_key_vault_secret" "name" {
  for_each = var.key_vault_id != null ? toset([coalesce(var.name, local.secret)]) : toset([])

  name            = coalesce(var.name, local.secret)
  value           = coalesce(var.password, random_password.user.result)
  key_vault_id    = var.key_vault_id
  content_type    = var.content_type
  tags            = var.tags
  not_before_date = var.not_before_date
  expiration_date = var.expiration_date
}

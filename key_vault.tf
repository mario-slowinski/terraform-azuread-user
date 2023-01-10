resource "azurerm_key_vault_secret" "this" {
  count = length(var.key_vault_id) > 0 ? 1 : 0

  name            = coalesce(var.name, local.secret)
  value           = coalesce(var.password, random_password.user.result)
  key_vault_id    = var.key_vault_id
  content_type    = var.content_type
  tags            = var.tags
  not_before_date = var.not_before_date
  expiration_date = var.expiration_date
}

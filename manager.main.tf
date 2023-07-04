data "azuread_user" "manager" {
  count = var.manager != null ? 1 : 0

  mail                = var.manager.mail
  mail_nickname       = var.manager.mail_nickname
  object_id           = var.manager.object_id
  user_principal_name = var.manager.user_principal_name
}

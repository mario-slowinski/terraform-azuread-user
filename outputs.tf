output "data" {
  description = "User's data."
  value       = azuread_user.data
  sensitive   = false
}

output "password" {
  description = "User's password."
  value       = coalesce(sensitive(var.password), random_password.user.result)
  sensitive   = true
}

output "secret" {
  description = "Azure Key Vault Secret."
  value       = { for name, secret in azurerm_key_vault_secret.name : name => secret }
  sensitive   = true
}

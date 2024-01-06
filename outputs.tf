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

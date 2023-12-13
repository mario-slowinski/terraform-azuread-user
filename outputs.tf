output "user" {
  description = "User's data."
  value       = { for user_principal_name, user in azuread_user.user_principal_name : user_principal_name => user }
  sensitive   = false
}

output "password" {
  description = "User's password."
  value       = coalesce(sensitive(var.password), random_password.user.result)
  sensitive   = true
}

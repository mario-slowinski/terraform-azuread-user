output "user" {
  description = "User's data."
  value       = local.user
  sensitive   = false
}

output "password" {
  description = "User's password."
  value       = coalesce(sensitive(var.password), random_password.user.result)
  sensitive   = true
}

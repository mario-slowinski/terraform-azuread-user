output "display_name" {
  description = "The name to display in the address book for the user."
  value       = azuread_user.this.display_name
  sensitive   = false
}

output "mail" {
  description = "The SMTP address for the user."
  value       = azuread_user.this.mail
  sensitive   = false
}

output "creation_type" {
  description = "Indicates whether the user account was created as a regular school or work account (null), an external account (Invitation), a local account for an Azure Active Directory B2C tenant (LocalAccount) or self-service sign-up using email verification (EmailVerified)."
  value       = azuread_user.this.creation_type
  sensitive   = false
}

output "external_user_state" {
  description = "For an external user invited to the tenant, this property represents the invited user's invitation status."
  value       = azuread_user.this.external_user_state
  sensitive   = false
}

output "im_addresses" {
  description = "A list of instant message voice over IP (VOIP) session initiation protocol (SIP) addresses for the user."
  value       = azuread_user.this.im_addresses
  sensitive   = false
}

output "object_id" {
  description = "The object ID of the user."
  value       = azuread_user.this.object_id
  sensitive   = false
}

output "onpremises_distinguished_name" {
  description = "The on-premises distinguished name (DN) of the user, synchronised from the on-premises directory when Azure AD Connect is used."
  value       = azuread_user.this.onpremises_distinguished_name
  sensitive   = false
}

output "onpremises_domain_name" {
  description = "The on-premises FQDN, also called dnsDomainName, synchronised from the on-premises directory when Azure AD Connect is used."
  value       = azuread_user.this.onpremises_domain_name
  sensitive   = false
}

output "onpremises_sam_account_name" {
  description = "The on-premise SAM account name of the user."
  value       = azuread_user.this.onpremises_sam_account_name
  sensitive   = false
}

output "onpremises_security_identifier" {
  description = "The on-premises security identifier (SID), synchronised from the on-premises directory when Azure AD Connect is used."
  value       = azuread_user.this.onpremises_security_identifier
  sensitive   = false
}

output "onpremises_sync_enabled" {
  description = "Whether this user is synchronised from an on-premises directory (true), no longer synchronised (false), or has never been synchronised (null)."
  value       = azuread_user.this.onpremises_sync_enabled
  sensitive   = false
}

output "onpremises_user_principal_name" {
  description = "The on-premise user principal name of the user."
  value       = azuread_user.this.onpremises_user_principal_name
  sensitive   = false
}

output "proxy_addresses" {
  description = "List of email addresses for the user that direct to the same mailbox."
  value       = azuread_user.this.proxy_addresses
  sensitive   = false
}

output "user_type" {
  description = "The user type in the directory. Possible values are Guest or Member."
  value       = azuread_user.this.user_type
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

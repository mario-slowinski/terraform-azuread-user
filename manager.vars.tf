variable "manager" {
  type = object({
    mail                = optional(string) # The SMTP address for the user.
    mail_nickname       = optional(string) # The email alias of the user.
    object_id           = optional(string) # The object ID of the user.
    user_principal_name = optional(string) # The user principal name (UPN) of the user.
  })
  default = null
}

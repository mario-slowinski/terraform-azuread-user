variable "key_vault_id" {
  type        = string
  description = "The ID of the Key Vault where the Secret should be created."
  default     = null
}

variable "content_type" {
  type        = string
  description = "Specifies the content type for the Key Vault Secret."
  default     = null
}

variable "name" {
  type        = string
  description = "Specifies the name of the Key Vault Secret."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = null
}

variable "not_before_date" {
  type        = string
  description = "Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z')."
  default     = null
}

variable "expiration_date" {
  type        = string
  description = "Expiration UTC datetime (Y-m-d'T'H:M:S'Z')."
  default     = null
}

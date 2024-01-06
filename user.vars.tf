variable "account_enabled" {
  type        = bool
  description = "Whether or not the account should be enabled."
  default     = null
}

variable "age_group" {
  type        = string
  description = "The age group of the user."
  default     = null
}

variable "business_phones" {
  type        = list(string)
  description = "A list of telephone numbers for the user."
  default     = null
}

variable "city" {
  type        = string
  description = "The city in which the user is located."
  default     = null
}

variable "company_name" {
  type        = string
  description = "The company name which the user is associated."
  default     = null
}

variable "consent_provided_for_minor" {
  type        = string
  description = "Whether consent has been obtained for minors."
  default     = null
}

variable "cost_center" {
  type        = string
  description = "The cost center associated with the user."
  default     = null
}

variable "country" {
  type        = string
  description = "The country/region in which the user is located."
  default     = null
}

variable "department" {
  type        = string
  description = "The name for the department in which the user works."
  default     = null
}

variable "disable_password_expiration" {
  type        = bool
  description = "Whether the user's password is exempt from expiring."
  default     = null # false
}

variable "disable_strong_password" {
  type        = bool
  description = "Whether the user is allowed weaker passwords than the default policy to be specified."
  default     = null # false
}

variable "display_name" {
  type        = string
  description = "The name to display in the address book for the user."
  default     = ""
}

variable "division" {
  type        = string
  description = "The name of the division in which the user works."
  default     = null
}

variable "employee_id" {
  type        = string
  description = "The employee identifier assigned to the user by the organisation."
  default     = null
}

variable "employee_type" {
  type        = string
  description = "Captures enterprise worker type."
  default     = null
}

variable "fax_number" {
  type        = string
  description = "The fax number of the user."
  default     = null
}

variable "force_password_change" {
  type        = bool
  description = "Whether the user is forced to change the password during the next sign-in."
  default     = null
}

variable "given_name" {
  type        = string
  description = "The given name (first name) of the user."
  default     = null
}

variable "job_title" {
  type        = string
  description = "The user’s job title."
  default     = null
}

variable "mail" {
  type        = string
  description = "The SMTP address for the user."
  default     = null
}

variable "mail_nickname" {
  type        = string
  description = "The mail alias for the user. Defaults to the user name part of the user principal name (UPN)."
  default     = null
}

variable "manager_id" {
  type        = string
  description = "The object ID of the user's manager."
  default     = null
}

variable "mobile_phone" {
  type        = string
  description = "The primary cellular telephone number for the user."
  default     = null
}

variable "office_location" {
  type        = string
  description = "The office location in the user's place of business."
  default     = null
}

variable "onpremises_immutable_id" {
  type        = string
  description = "The value used to associate an on-premise Active Directory user account with their Azure AD user object."
  default     = null
}

variable "other_mails" {
  type        = list(string)
  description = "A list of additional email addresses for the user."
  default     = null
}

variable "password" {
  type        = string
  description = "The password for the user."
  default     = null
}

variable "postal_code" {
  type        = string
  description = "The postal code for the user's postal address."
  default     = null
}

variable "preferred_language" {
  type        = string
  description = "The user's preferred language, in ISO 639-1 notation."
  default     = null
}

variable "show_in_address_list" {
  type        = bool
  description = "Whether or not the Outlook global address list should include this user."
  default     = null # true
}

variable "state" {
  type        = string
  description = "The state or province in the user's address."
  default     = null
}

variable "street_address" {
  type        = string
  description = "The street address of the user's place of business."
  default     = null
}

variable "surname" {
  type        = string
  description = "The user's surname (family name or last name)."
  default     = null
}

variable "usage_location" {
  type        = string
  description = "The usage location of the user."
  default     = null
}

variable "user_principal_name" {
  type        = string
  description = "The user principal name (UPN) of the user."
  default     = ""
}

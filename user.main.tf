resource "azuread_user" "user_principal_name" {
  for_each = var.user_principal_name != null ? toset([var.user_principal_name]) : toset([])

  account_enabled             = var.account_enabled
  age_group                   = var.age_group
  business_phones             = var.business_phones
  city                        = var.city
  company_name                = var.company_name
  consent_provided_for_minor  = var.consent_provided_for_minor
  cost_center                 = var.cost_center
  country                     = var.country
  department                  = var.department
  disable_password_expiration = var.disable_password_expiration
  disable_strong_password     = var.disable_strong_password
  display_name                = coalesce(var.display_name, local.display_name)
  division                    = var.division
  employee_id                 = var.employee_id
  fax_number                  = var.fax_number
  force_password_change       = var.force_password_change
  given_name                  = var.given_name
  job_title                   = var.job_title
  mail                        = var.mail
  mail_nickname               = var.mail_nickname
  manager_id                  = var.manager_id
  mobile_phone                = var.mobile_phone
  office_location             = var.office_location
  onpremises_immutable_id     = var.onpremises_immutable_id
  other_mails                 = var.other_mails
  password                    = var.password != "" ? var.password : random_password.user.result
  postal_code                 = var.postal_code
  preferred_language          = var.preferred_language
  show_in_address_list        = var.show_in_address_list
  state                       = var.state
  street_address              = var.street_address
  surname                     = var.surname
  usage_location              = var.usage_location
  user_principal_name         = var.user_principal_name
}

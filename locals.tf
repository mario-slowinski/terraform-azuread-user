locals {
  user         = one([for user_principal_name, user in azuread_user.user_principal_name : user])
  display_name = "${var.given_name} ${var.surname}"
  secret       = replace(replace(var.user_principal_name, "/@.+/", ""), ".", "-")
}

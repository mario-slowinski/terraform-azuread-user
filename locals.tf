locals {
  display_name = "${var.given_name} ${var.surname}"
  secret       = replace(replace(var.user_principal_name, "/@.+/", ""), ".", "-")
}

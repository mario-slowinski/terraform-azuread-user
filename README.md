azuread-user
============

Terraform [Azure Active Directory User](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/add-users-azure-active-directory)
and optionally store its password in [Azure Key Vault](https://learn.microsoft.com/en-us/azure/key-vault/general/basic-concepts).

Required providers
------------------

* [hashicorp/azuread](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs)

Variables
--------------

* **user**
  * `account_enabled`: Whether or not the account should be enabled.
  * `age_group`: The age group of the user.
  * `business_phones`: A list of telephone numbers for the user.
  * `city`: The city in which the user is located.
  * `company_name`: The company name which the user is associated.
  * `consent_provided_for_minor`: Whether consent has been obtained for minors.
  * `cost_center`: The cost center associated with the user.
  * `country`: The country/region in which the user is located.
  * `department`: The name for the department in which the user works.
  * `disable_password_expiration`: Whether the user's password is exempt from expiring.
  * `disable_strong_password`: Whether the user is allowed weaker passwords than the default policy to be specified.
  * `display_name`: The name to display in the address book for the user.
  * `division`: The name of the division in which the user works.
  * `employee_id`: The employee identifier assigned to the user by the organisation.
  * `employee_type`: Captures enterprise worker type.
  * `fax_number`: The fax number of the user.
  * `force_password_change`: Whether the user is forced to change the password during the next sign-in.
  * `given_name`: The given name (first name) of the user.
  * `job_title`: The user’s job title.
  * `mail`: The SMTP address for the user.
  * `mail_nickname`: The mail alias for the user. Defaults to the user name part of the user principal name (UPN).
  * `manager_id`: The object ID of the user's manager.
  * `mobile_phone`: The primary cellular telephone number for the user.
  * `office_location`: The office location in the user's place of business.
  * `onpremises_immutable_id`: The value used to associate an on-premise Active Directory user account with their Azure AD user object.
  * `other_mails`: A list of additional email addresses for the user.
  * `password`: The password for the user. Generate random if not set.
  * `postal_code`: The postal code for the user's postal address.
  * `preferred_language`: The user's preferred language, in ISO 639-1 notation.
  * `show_in_address_list`: Whether or not the Outlook global address list should include this user.
  * `state`: The state or province in the user's address.
  * `street_address`: The street address of the user's place of business.
  * `surname`: The user's surname (family name or last name).
  * `usage_location`: The usage location of the user.
  * `user_principal_name`: The user principal name (UPN) of the user.

* **key_vault**
  * `key_vault_id`: The ID of the Key Vault where the Secret should be created. Not stored if empty.
  * `content_type`: Specifies the content type for the Key Vault Secret.
  * `name`: Specifies the name of the Key Vault Secret.
  * `tags`: A mapping of tags to assign to the resource.
  * `not_before_date`: Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  * `expiration_date`: Expiration UTC datetime (Y-m-d'T'H:M:S'Z').

* **password**
  * `keepers`: Arbitrary map of values that, when changed, will trigger recreation of resource.
  * `length`: The length of the string desired.
  * `lower`: Include lowercase alphabet characters in the result.
  * `min_lower`: Minimum number of lowercase alphabet characters in the result.
  * `min_numeric`: Minimum number of numeric characters in the result.
  * `min_special`: Minimum number of special characters in the result.
  * `min_upper`: Minimum number of uppercase alphabet characters in the result.
  * `numeric`: Include numeric characters in the result.
  * `override_special`: Supply your own list of special characters to use for string generation.
  * `special`: Include special characters in the result.
  * `upper`: Include upper characters in the result.

Outputs
--------------

* `data`: User's data.
* `password`: User's password, random generated or given as variable.

Dependencies
------------

*No* *dependencies*

Examples
--------

```terraform
module "azuread-user" {
  sources = "github.com/mario-slowinski/terraform-azuread-user"
}
```

License
-------

[GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.html)

Author Information
------------------

[mario.slowinski@gmail.com](mailto:mario.slowinski@gmail.com)

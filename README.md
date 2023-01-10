azuread-user
============

Terraform [Azure Active Diretory User](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/add-users-azure-active-directory).

If `var.display_name` is:

* **set** - create resource
* **not set** - read existing resource data

Required providers
------------------

* [hashicorp/azuread](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs)

Variables
--------------

* `variables.tf`
  * `user_principal_name`: The user principal name (UPN) of the user.
  * **`display_name`**: The name to display in the address book for the user.

Outputs
--------------

* `data`: User's data.

Dependencies
------------

*No* *dependencies*

Examples
--------

* `main.tf`

  ```terraform
  module "azuread_user" {
    sources = "github.com/mario-slowinski/terraform-azuread-user"
  }
  ```

License
-------

[GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.html)

Author Information
------------------

[mario.slowinski@gmail.com](mailto:mario.slowinski@gmail.com)

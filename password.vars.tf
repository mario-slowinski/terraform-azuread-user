variable "keepers" {
  type        = map(string)
  description = "Arbitrary map of values that, when changed, will trigger recreation of resource."
  default     = null
}

variable "length" {
  type        = number
  description = "The length of the string desired."
  default     = 12
}

variable "lower" {
  type        = bool
  description = "Include lowercase alphabet characters in the result."
  default     = null # true
}

variable "min_lower" {
  type        = number
  description = "Minimum number of lowercase alphabet characters in the result."
  default     = null # 0
}

variable "min_numeric" {
  type        = number
  description = "Minimum number of numeric characters in the result."
  default     = null # 0
}

variable "min_special" {
  type        = number
  description = "Minimum number of special characters in the result."
  default     = null # 0
}

variable "min_upper" {
  type        = number
  description = "Minimum number of uppercase alphabet characters in the result."
  default     = null # 0
}

variable "numeric" {
  type        = bool
  description = "Include numeric characters in the result."
  default     = null # true
}

variable "override_special" {
  type        = string
  description = "Supply your own list of special characters to use for string generation."
  default     = null
}

variable "special" {
  type        = bool
  description = "Include special characters in the result."
  default     = null # true
}

variable "upper" {
  type        = bool
  description = "Include upper characters in the result."
  default     = null # true
}

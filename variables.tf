# ----------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# ----------------------------------------------------------------------------------------------------------------------

variable "name_suffix" {
  description = "An arbitrary suffix that will be added to the end of the resource name(s). For example: an environment name, a business-case name, a numeric id, etc."
  type        = string
  validation {
    condition     = length(var.name_suffix) <= 14
    error_message = "A max of 14 character(s) are allowed."
  }
}

variable "name" {
  description = "Portion of the email-address username that will be generated for the ServiceAccount."
  type        = string
}

variable "display_name" {
  description = "A mutable name for the service account."
  type        = string
}

# ----------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# ----------------------------------------------------------------------------------------------------------------------

variable "description" {
  description = "The description of the service account."
  type        = string
  default     = "Generated by Terraform"
}

variable "roles" {
  description = "IAM roles to be added to the service account. See https://cloud.google.com/iam/docs/understanding-roles."
  type        = list(string)
  default     = []
}

variable "account_id" {
  description = "The account id that is used to generate the service account email address and a stable unique id. Must be 6-30 characters long, and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])."
  type        = string
  default     = ""
}

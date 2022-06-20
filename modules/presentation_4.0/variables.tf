# ------------------------------------------------------------------------
# Amazon S3 variables
# ------------------------------------------------------------------------

variable "website_name" {
  type        = string
  description = "The name of the presentation tier. Must be less than or equal to 63 characters in length."
}

variable "objects" {
  type        = map(any)
  description = ""
  default     = {}
}

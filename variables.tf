variable "OS_AUTH_TYPE" {
type = string
default = "value"
}

variable "OS_AUTH_URL" {
type = string
default = "value"
sensitive = true
}

variable "OS_IDENTITY_API_VERSION" {
type = string
default = "value"
}

variable "OS_REGION_NAME" {
type = string
default = "value"
}

variable "OS_INTERFACE" {
type = string
default = "value"
}

variable "OS_APPLICATION_CREDENTIAL_ID" {
type = string
default = "value"
sensitive = true
}

variable "OS_APPLICATION_CREDENTIAL_SECRET" {
type = string
default = "value"
sensitive = true
}

variable "OS_TENANT_NAME" {
type = string
default = "value"
}

variable "OS_VM_NAME" {
  type = string
  default = "value"
}

variable "OS_IMAGE_NAME" {
  type = string
  default = "value"
}

variable "OS_FLAVOR_NAME" {
  type = string
  default = "value"
}

variable "OS_KEY_PAIR_NAME" {
  type = string
  default = "value"
}

variable "OS_NETWORK_NAME" {
  type = string
  default = "value"
}

variable "OS_VOLUME_SIZE" {
  type = number
  default = 1
}

variable "OS_VOLUME_NAME" {
  type = string
  default = "value"
}
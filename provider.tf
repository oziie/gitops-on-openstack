terraform {
# required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
    #   version = "~> 1.51.1"
    }
  }
backend "http" {}
}


provider "openstack" {
  tenant_name = var.OS_TENANT_NAME # OS_TENANT_NAME or OS_PROJECT NAME can be used. Note to be removed later.
  application_credential_id = var.OS_APPLICATION_CREDENTIAL_ID
  application_credential_secret = var.OS_APPLICATION_CREDENTIAL_SECRET
  auth_url    = var.OS_AUTH_URL
  region      = var.OS_REGION_NAME
}
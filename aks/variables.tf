# Azure Location
variable "location" {
  type        = string
  description = "Azure Region where all these resources will be provisioned"
  default     = "Central US"
}

# Cluster Name
variable "cluster_name" {
  type        = string
  description = "The name for the AKS cluster"
  default     = "WishNote"
}

# Environment name
variable "env_name" {
  type        = string
  description = "The environment for the AKS cluster"
  default     = "DEV"
}

# Vnet input vnet, subnet
variable "address_space" {
  type        = list(string)
  description = "The vnet for the AKS cluster"
  default     = ["10.0.0.0/8"]
}
variable "address_prefixes" {
  type        = list(string)
  description = "The subnet for the AKS cluster"
  default     = ["10.240.0.0/16"]
}

# AKS Input Variables
# SSH Public Key for Linux VMs
variable "ssh_public_key" {
  default     = "~/.ssh/akssshkey.pub"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"
}

variable "project" {
  default = "stately-avatar-334702"
  description = "The project ID to host the cluster in"
}

variable "region" {
  description = "The region to host the cluster in"
  default     = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}

variable "cluster" {
  default = "cicd-workshops"
  description = "The name for the GKE cluster"
}

variable "credentials" {
  default = "~/.ssh/cicd_demo_gcp_creds.json"
}

variable "kubernetes_min_ver" {
  default = "latest"
}

variable "kubernetes_max_ver" {
  default = "latest"
}
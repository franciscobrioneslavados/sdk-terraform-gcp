variable "project" {
  default     = ""
  description = "The project ID to host the cluster in"
}

variable "region" {
  description = "The region to host the cluster in"
  default     = ""
}

variable "zone" {
  description = "The zone to host the cluster in"
  default = ""
}

variable "cluster" {
  default     = ""
  description = "The name for the GKE cluster"
}

variable "node_pool" {
  default     = ""
  description = "The name for the node pool"
}

variable "kubernetes_min_ver" {
  default = "latest"
}

variable "kubernetes_max_ver" {
  default = "latest"
}

variable "machine_type" {
  default = "e2-medium"
}

variable "app_name" {
  default =  "cluster-tag"
}

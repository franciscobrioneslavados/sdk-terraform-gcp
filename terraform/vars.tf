variable "project" {
  default     = "stately-avatar-334702"
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
  default     = "learn-k8s-cluster"
  description = "The name for the GKE cluster"
}

variable "node_pool" {
  default     = "learn-k8s-node-pool"
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
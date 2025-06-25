variable "compartment_id" {
  description = "OCI compartment OCID"
  type        = string
}

variable "region" {
  description = "OCI region"
  type        = string
  default     = "us-ashburn-1"
}

variable "cluster_name" {
  description = "OKE cluster name"
  type        = string
  default     = "chatbot-cluster"
}

variable "kubeconfig_path" {
  description = "Path to Kubeconfig file"
  type        = string
  default     = "~/.kube/config"
}
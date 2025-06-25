provider "oci" {
  region = var.region
}

module "oke_cluster" {
  source         = "./modules/oke"
  compartment_id = var.compartment_id
  cluster_name   = var.cluster_name
  region         = var.region
}

provider "kubernetes" {
  config_path = var.kubeconfig_path
}

provider "helm" {
  kubernetes {
    config_path = var.kubeconfig_path
  }
}

module "kafka" {
  source   = "./modules/kafka"
  namespace = "kafka"
}
resource "oci_containerengine_cluster" "oke" {
  name           = var.cluster_name
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.oke_vcn.id
  kubernetes_version = "v1.27.2"
}

resource "oci_core_vcn" "oke_vcn" {
  cidr_block     = "10.0.0.0/16"
  compartment_id = var.compartment_id
  display_name   = "oke-vcn"
}
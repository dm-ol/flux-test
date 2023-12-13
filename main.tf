provider "google" {
  project = var.GOOGLE_PROJECT
  region  = var.GOOGLE_REGION
}

module "gke_cluster" {
  source           = "github.com/dm-ol/tf-google-gke-cluster"
  GOOGLE_REGION    = var.GOOGLE_REGION
  GOOGLE_PROJECT   = var.GOOGLE_PROJECT
  GKE_MACHINE_TYPE = var.GKE_MACHINE_TYPE
  GKE_NUM_NODES    = var.GKE_NUM_NODES
}

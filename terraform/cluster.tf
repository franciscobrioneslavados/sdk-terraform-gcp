resource "google_container_cluster" "primary" {
  name     = var.cluster
  location = var.region

  remove_default_node_pool = true
  initial_node_count       = 1

  maintenance_policy {
    recurring_window {
      start_time = "2019-01-01T09:00:00Z"
      end_time   = "2019-01-01T17:00:00Z"
      recurrence = "FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR"
    }
  }
}


resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = var.node_pool
  location   = var.region
  cluster    = google_container_cluster.primary.name
  node_count = 1


  node_config {
    preemptible  = true
    machine_type = var.machine_type

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.default.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}

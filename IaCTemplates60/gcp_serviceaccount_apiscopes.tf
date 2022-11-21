
resource "google_compute_instance" "serviceaccount1" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  service_account {
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
    email  = "[PROJECT_NUMBER]-compute@developer.gserviceaccount.com"
  }
}

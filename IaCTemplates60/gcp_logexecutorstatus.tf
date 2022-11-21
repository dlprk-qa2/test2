
resource "google_sql_database_instance" "default7" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"
  settings {
         database_flags {
            name  = "log_executor_stats"
            value = "on"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}
resource "google_sql_ssl_cert" "client_cert7" {
  common_name = "client-name"
  instance    = google_sql_database_instance.default.name
}

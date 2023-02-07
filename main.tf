resource "google_sql_database_instance" "instance" {
  name             = "my-instance"
  region           = "us-central1"
  database_version = "POSTGRES_14"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "false"
}

resource "google_sql_database" "first-DB-from-tf" {
  name     = "first-GCP-DB-from-tf"
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_user" "User-name" {
  name     = "Gourab"
  instance = google_sql_database_instance.instance.name
  //host     = "me.com"      //(Optional and only applicable for MySQL)
  password = "12345"
}
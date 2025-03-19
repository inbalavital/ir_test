resource google_sql_database_instance "db_instance" {
  settings {
    backup_configuration {
      enabled = false
    }
    tier = "STANDARD"
  }
}
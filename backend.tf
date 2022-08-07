terraform {
  backend "s3" {
    bucket = "mynews3bucket0012"
    key    = "new.tfstate"
    region = "us-east-1"
    dynamodb_table = "Demo-table_for_lock"
  }
}
terraform {
  backend "s3" {
    dynamodb_table = "terraform-tfstate-lock"
    bucket         = "737104855875-terraform-tfstate"
    key            = "terraform/terraform.tfstate"
    region         = "eu-central-1"

  }
}
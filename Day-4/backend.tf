terraform {
  backend "s3" {
    bucket         = "my-ews-baket1" # change this
    key            = "saumya/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}

/*resource "aws_instance" "abhishek" {
  instance_type = "t2.micro"
  ami = "ami-0261755bbcb8c4a84" # change this
  subnet_id = "subnet-0218ce1671129f988" # change this
}*/

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "my-ews-baket150" # change this
}

resource "aws_s3_bucket" "s3_sam" {
  bucket = "mews-baket15" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

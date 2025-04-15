terraform {
  backend "s3" {
    bucket         = "vq8-bucket"
    key            = "terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
  }
}

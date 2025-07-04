terraform {
  backend "s3" {
    bucket       = "ojm-terraform-state-bucket"
    key          = "terraform.tfstate"
    region       = "ap-northeast-2"
    use_lockfile = true
    encrypt      = true
  }
}



terraform { 
  cloud { 
    hostname = "tfe-docker-fdo2.harshit-dixit.sbx.hashidemos.io" 
    organization = "Harshit-Org" 

    workspaces { 
      name = "Github-Action-Test" 
    } 
  } 
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "tfe-gha-demo-bucket-${random_id.suffix.hex}"
}

resource "random_id" "suffix" {
  byte_length = 4
}

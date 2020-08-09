terraform {
  required_version = "~> 0.12.29"

  backend "remote" {
    workspaces { name = "terraform-cloud-demo" }
    hostname = "app.terraform.io"
    organization = "strider-automation"
  }
}

resource "aws_eip" "elastic_ips" {
    vpc = true
}

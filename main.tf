provider "aws" {
  region = "us-east-2"
}

data "terraform_remote_state" "fakecompany_vpc_id" {
  backend = "tfe"
  config {
    name = "andys-fake-company/AWS-Network-Team"
  }
}

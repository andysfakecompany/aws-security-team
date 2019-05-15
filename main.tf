provider "aws" {
  region = "us-east-2"
}

data "terraform_remote_state" "fakecompany_vpc_id" {
  backend = "remote"

  config = {
    organization = "andys-fake-company"

    workspaces {
      name = "Network-Team"
    }
  }
}

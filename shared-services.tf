resource "aws_security_group" "shared-services" {
  name        = "shared_services"
  description = "Allow inbound traffic for shared items"
  vpc_id = "${data.terraform_remote_state.networking_stuff.fakecompany_vpc_id}"

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 8200
    to_port     = 8200
    protocol    = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

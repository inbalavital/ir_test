providers   = { aws = aws.usw2 }
source      = "git::https://bitbucket.schwab.com/scm/aws/terraform-aws-schwab-security-group?ref=v1.1.0"
short_name  = "bob"
vpc_id      = "ec2_vpce_easts_onpremise"
environment = "development"
team        = "prisma"
purpose     = "rdp-prisma-test"


resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_security_group" "sgr_pass_limited_ip" {
  ingress {
    description = "TLS from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.main.cidr_block]
  }
}
esource "aws_security_group" "sgr_pass_limited_port" {
  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "sgr_fail" {
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "sgr_pass_multiple_rules" {
  ingress {
    description = "TLS from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.main.cidr_block]
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_security_group" "sgr_fail_multiple_rules" {
  ingress {
    description = "TLS from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.main.cidr_block]
  }

}
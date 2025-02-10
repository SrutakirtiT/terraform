resource "aws_instance" "this" {
    ami   =  var.ami_id
    vpc_security_group_ids = [aws_security_group.allow_tls_1.id]
    instance_type = var.environment == "prod" ? "t3.small" : "t3.micro"
    tags = var.ec2_tags
}

resource "aws_security_group" "allow_tls_1" {
  name        = "allow_tls_1"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port       = var.from_port
    to_port         = var.to_port
    protocol        = "tcp"
    cidr_blocks      = var.cidr_blocks
  }

   egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }


  tags = var.sg_tags
}
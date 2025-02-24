module "ec2" {
    source = "../terraform-aws-ec2"
    sg_id = "sg-0f555c3848aa19041"
    instance_type = "t3.small"
}

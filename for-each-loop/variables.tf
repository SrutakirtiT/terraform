variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "domain_name" {
    default = "tskdaws.online"
}

variable "zone_id" {
    default = "Z016876422U7W1OGZ1MFM"
}
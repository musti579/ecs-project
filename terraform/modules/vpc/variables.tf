variable "vpc_cidr_block" {
  default = "10.0.0.0/22"
}
 variable "cidr_block_public1" {
  default = "10.0.0.0/24"
}

variable "cidr_block_public2" {
  default = "10.0.1.0/24"
}

variable "az_1" {
  default = "eu-north-1a"
}

variable "az_2" {
  default = "eu-north-1b"
}

variable "rt_cidr_block" {
  default = "0.0.0.0/0"
}
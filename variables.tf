variable "env" {
  type        = string
  description = "Environment Name"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for instance"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "List of private subnet ids"
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "List of public subnet ids"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "This is the type of "
}

variable "user_data" {
  type        = string
  description = "Enter the user data to run while lauching the ec2 instance"
}

variable "private_key" {
  type        = string
  description = "Private key value for generating public key"
  sensitive   = true
}

variable "public_sg_ingress" {
  type = list(object({
    from_port = number
    to_port = number
    protocol = string
    cidr_blocks = list(string)
    ipv6_cidr_blocks = optional(list(string))
  }))
  default     = []
  description = "public security group's ingress rules"
}

variable "public_sg_egress" {
  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = list(string)
    ipv6_cidr_blocks = optional(list(string))
  }))
  description = "Full engress blocks with cidr blocks, to_port, from_port, protocol, ipv6_cidr_blocks(optional)"
  default = [{
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }]
}

variable "private_sg_ingress" {
  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = list(string)
    ipv6_cidr_blocks = optional(list(string))
  }))
  default     = []
  description = "Full ingress blocks with cidr blocks, to_port, from_port, protocol, ipv6_cidr_blocks(optional)"
}

variable "private_sg_egress" {
  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = list(string)
    ipv6_cidr_blocks = optional(list(string))
  }))
  default     = []
  description = "Full ingress blocks with cidr blocks, to_port, from_port, protocol, ipv6_cidr_blocks(optional)"
}
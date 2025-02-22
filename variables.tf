variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  type        = list(string)
}

variable "enable_nat_gateway" {
  type        = bool
  default     = true
}

variable "tags" {
  type        = map(string)
  default     = {
    Name = "ecs-fargate-vpc"
  }
}
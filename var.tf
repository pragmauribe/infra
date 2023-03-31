variable "CIDR" {
  type        = list(string)
  description = "CIDR VPC"
  default     = ["10.0.0.0/16", "10.0.1.0/24", "10.0.2.0/24"]
}

variable "az" {
  type        = list(string)
  description = "AWS Availability Zones"
  default     = ["us-west-2a", "us-west-2b"]
}

variable "subnet" {
  type        = list(string)
  description = "Names of Subnets"
  default     = ["subnet_public1", "subnet_public2"]
}

variable "RouteTable" {
  type        = list(string)
  description = "Names of Route Table"
  default     = ["rt_public1", "rt_public2"]
}

# Elastic beanstalk
variable "elasticapp" {
  default = "myapp"
}
variable "beanstalkappenv" {
  default = "myenv"
}
variable "solution_stack_name" {
  type    = string
  default = "64bit Amazon Linux 2 v5.7.0 running Node.js 14"
}

variable "tier" {
  type    = string
  default = "WebServer"
}

variable "info_tags" {
  type        = map(string)
  description = "Additional resource tags"
  default     = { owner = "Ivancho", email = "ivan.uribe@pragma.com.co", Environment = "test", Project = "Talent Pool" }
}
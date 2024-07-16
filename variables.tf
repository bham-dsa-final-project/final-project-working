# EC2 VAR

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-026b2ae0ba2773e0a"
}

variable "key_name" {
  default = "terraform_access"
}



# RDS VAR

variable "allocated_storage" {
  description = "Allocated storage size RDS"
  type        = number
  default     = 10
}

variable "engine" {
  description = "Database Engine"
  type        = string
  default     = "mysql"
}

variable "engine_version" {
  description = "Database engine version"
  type        = string
  default     = "8.0.35"
}

variable "instance_class" {
  description = "Database instance class or type"
  type        = string
  default     = "db.t3.micro"
}

variable "identifier" {
  description = "Name of RDS Instance"
  type        = string
  default     = "mysql-dev"
}

variable "username" {
  description = "Database username"
  type        = string
  default     = "admin"
}

variable "password" {
  description = "Database Password"
  type        = string
  default     = "Abc65871234"
}

variable "skip_final_snapshot" {
  description = "Skip final Snapshot"
  type        = bool
  default     = true #This is good when you are working in development environment, adjust as per your need.
}

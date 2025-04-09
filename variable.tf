variable "aws_region" {
  default = "ap-south-1"
}

variable "key_name" {
  default = "" # Add your key name for SSH if needed
}

variable "user_data_path" {
  default = "user-data.sh"
}

variable "min_size" {
  default = 1
}

variable "max_size" {
  default = 3
}

variable "desired_capacity" {
  default = 2
}

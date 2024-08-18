# Variable for the SSH key name
variable "ssh_key_name" {
  description = "The name of the SSH key pair to use for EC2 instances"
  type        = string
  default     = "jug"  # Replace this with your default SSH key name
}
variable "aws_region" {
  description = "The AWS region where the EKS cluster will be created"
  type        = string
  default     = "us-west-2"  # Or your desired default region
}

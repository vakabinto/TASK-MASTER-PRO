# Variable for the SSH key name
variable "ssh_key_name" {
  description = "The name of the SSH key pair to use for EC2 instances"
  type        = string
  default     = "jug"  # Replace this with your default SSH key name
}
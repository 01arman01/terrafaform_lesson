variable "instance_type" {
  description = "the type of lounch instance"
  type        = string
  default     = "t2.micro"

}

variable "tag_name" {
  description = "A map of tags to add to all resourses"
  type        = string
  default     = "Myinstance"
}
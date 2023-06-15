variable "sample" {
  default = 100
}

variable "sample1" {
  default = "hello world"
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}

output "sample-exc" {
  value = "value of sample - ${var.sample}"
}


#variable data types
#1.String
#2.Number
#3.Boolean

#in ansible  1.Plain key.value 2.list 3.map/dict
#in terraform 1.plain 2.list 3.map
#1.plain
variable "course" {
  default = "devops training"
}

#2.list
variable "courses" {
  default = [
    "devops",
    "aws",
    "python"
  ]
}
#3.map
variable "course_details" {
  default = {
    devops ={
      name = "devops"
      time = "10am"
      duration = 90
    }
    aws ={
      name = "aws"
      time = "11am"
      duration = 60
    }
  }
}

output "course" {
  value = var.course
}

output "courses" {
  value = var.courses[2]
}

output "course_details" {
  value = var.course_details["devops"]
}

variable "env" {}
output "env" {
  value = var.env
}

variable "url" {}

output "url" {
  value = var.url
}
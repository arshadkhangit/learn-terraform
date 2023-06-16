variable "class" {
  default = "devops"
}

output "class" {
  value = upper(var.class)
}

variable "fruits" {
  default = ["apple", "banana", "orange"]
}
output "fruit-count" {
  value = length(var.fruits)
}

variable "classes" {
  default = {
    devops = {
      name = "devops"
      topics = ["jenkins", "docker"]
    }
    aws = {
      name = "aws"
    }
  }
}

output "devops-topics" {
  value = var.classes["devops"]["topics"]
}

output "aws-topics" {
  value = lookup(lookup(var.classes, "aws", null ), "topics", "No topics in this")
}

output "fruit-0" {
  value = var.fruits[4]
}
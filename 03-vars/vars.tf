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
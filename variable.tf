variable username {
  type = string
  default = "World"
}

variable "age" {
  type = number
}

variable "objects" {
  type = list
  description = "list of objects"
  default = [
    {
      id = "name1"
      attribute = "a"
    },

    {
      id = "name2"
      attribute = "a,b"
    },

    {
      id = "name3"
      attribute = "d"
    },
  ]
  
}


variable "instance_name" {
  type        = list(string)
  description = "different instance name"
}

variable "loop_name" {
  type        = map(any)
  description = "different instance name"
}

variable "new_loop" {
  type        = map(any)
  description = "instance name"
}

variable "vpc_name" {
  type        = list(string)
  description = "different vpc names"
}

variable "bucket-loop" {
  type        = map(any)
  description = "S3 buckets"
}

variable "new_vpc_name" {
  type        = set(string)
  description = "S3 buckets"
}
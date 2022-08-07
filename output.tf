output printname {
    value = "Hello, ${var.username}, Your age is ${var.age}"
}

output "object" {
    value = var.objects[index(var.objects.*.id, "name2")]
}
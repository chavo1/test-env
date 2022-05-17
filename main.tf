resource "null_resource" "test02" {
  triggers = {
    value = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = "apt list | grep python"
  }
}

resource "null_resource" "test01" {
  triggers = {
    value = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = "pwd"
  }
}

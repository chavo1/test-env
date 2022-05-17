resource "null_resource" "test02" {
  triggers = {
    value = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = "apt list | grep python"
  }
}

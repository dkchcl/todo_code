resource "null_resource" "upload_frontend" {
  depends_on = [azurerm_linux_virtual_machine.frontend_vm]

  provisioner "file" {
    source      = "build/"                      # local folder (your frontend build)
    destination = "/tmp/build"                  # remote location on VM

    connection {
      type     = "ssh"
      user     = "vmuseradmin"
      password = "Bbpl@#2304"
      host     = azurerm_linux_virtual_machine.f_vm_name.public_ip_address
    }
  }

  provisioner "remote-exec" {
    inline = [
      "sudo cp -r /tmp/build/* /var/www/html/",
      "sudo chown -R www-data:www-data /var/www/html/",
      "sudo systemctl restart nginx"
    ]

    connection {
      type     = "ssh"
      user     = "vmuseradmin"
      password = "Bbpl@#2304"
      host     = azurerm_linux_virtual_machine.f_vm_name.public_ip_address
    }
  }
}

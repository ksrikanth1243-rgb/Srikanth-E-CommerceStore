output "application_public_ip" {
  value = aws_eip.app.public_ip
}

output "application_url" {
  value = "http://${aws_eip.app.public_ip}"
}

output "health_check_urls" {
  value = {
    frontend = "http://${aws_eip.app.public_ip}/"
    user     = "http://${aws_eip.app.public_ip}/health/user"
    products = "http://${aws_eip.app.public_ip}/health/products"
    cart     = "http://${aws_eip.app.public_ip}/health/cart"
    orders   = "http://${aws_eip.app.public_ip}/health/orders"
  }
}

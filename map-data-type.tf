variable "my_map" {
  type = map
  default={
    Name= "John Doe"
    Age = 30
    City = "New York"
  }
}
 
output "variable_value" {
  value = var.my_map
  
}
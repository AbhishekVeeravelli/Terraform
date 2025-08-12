variable "vpn_ip" {
  default     = "101.20.30.50/32"
  description = "This is the VPN server created in AWS"
  }

variable "app_port" {
  default     = 8080
}

variable "ftp_port" {
  default     = 21
}

variable "ssh_port" {
  default     = 22
}
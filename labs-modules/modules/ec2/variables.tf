variable "key_name" {
  type        = string
  description = "Cette variable me permet de passer le nom de la keypair pour mon instance"
  default     = "lewis_key"
}

variable "instance_type" {
  type        = string
  description = "Cette variable me permet de définir un template à utiliser pour mon instance"
  default     = "t2.nano"
}

variable "tag" {
  type        = string
  description = "Cette variable me permet de définir un tag à utiliser pour mon instance"
  default     = "lewis"
}

variable "sg" {
  type        = list
  description = "Cette variable me permet de définir un tag à utiliser pour mon instance"
  default     = null
}

variable "az" {
  type        = list(string)
    description = "Cette variable me permet de définir la zone de disponibilité"
      default     = ["us-east-1a"]
      }


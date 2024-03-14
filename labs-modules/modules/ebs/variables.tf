variable "size" {
  type        = number
  description = "Cette variable me permet de passer la taille de l'ebs"
  default     = 2
}

variable "az" {
  type        = list(string)
  description = "Cette variable me permet de définir la zone de disponibilité"
  default     = ["us-east-1a"]
}

variable "tag" {
  type        = string
  description = "Cette variable me permet de définir un tag à utiliser pour mon instance"
  default     = "lewis"
}


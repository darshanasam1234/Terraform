variable "mpsubnets" {
  type = map
  default={
    prod-subnet7="10.0.7.0/24"
    prod-subnet8="10.0.8.0/24"
    prod-subnet9="10.0.9.0/24"
    prod-subnet10="10.0.10.0/24"
    prod-subnet11="10.0.11.0/24"
    prod-subnet12="10.0.12.0/24"
    prod-subnet13="10.0.13.0/24"

  }
}

variable "rsglocation" {

  default="eastus"
  
}





locals {
  # Common tags applied to all resources
  common_tags = {
    environment = "production"
    cost_center = "EU"
  }

  # Specific tags for the virtual network
  vnet_tags = {
    owner   = "John Doe"
    purpose = "Web application infrastructure"
  }
}

provider "random" {}

variable "num_of_pets" {
  type = number
  description = "How many pets do we want"
}

resource "random_pet" "name" {
  length = var.num_of_pets
}

resource "random_pet" "pauls-pet" {
  length = 3
}

output "random_pet_name" {
  value = random_pet.name.id
}
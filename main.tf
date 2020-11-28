terraform {
  required_providers {
    iterative = {
      source = "iterative/iterative"
      version = "0.5.1"
    }
  }
}

provider "iterative" {}

resource "iterative_machine" "machine" {
  region = "us-west"
  ami = "iterative-cml"
  instance_hdd_size = "10"
  instance_type = "m"
  #instance_gpu = "tesla" 
}

output "ip" {
  value = iterative_machine.public_ip
}

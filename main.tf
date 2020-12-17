terraform {
  backend "s3" {
    bucket = "dearie-terraform-useast2"
    key    = "terry-test/dev"
    region = "us-east-2"
  }
}

provider "aws" {
  region = "us-east-2"
}

# resource "aws_sqs_queue" "terraform_queue" {
#   name                      = "terry-test"
#   delay_seconds             = 90
#   max_message_size          = 2048
#   message_retention_seconds = 86400
#   receive_wait_time_seconds = 10

#   tags = {
#     Environment = "Development"
#   }
# }
#
module "cloudcustodian" {
  source = "github.com/chris2fer/terraform-modules//role-cloudcustodian-readonly" #?ref=0.0.3
  assumed_by_principals = ["385351049440"]

}

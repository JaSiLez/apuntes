# Declare the aws providers
provider "aws" {
  
  access_key = "${AWS_ACCES_KEY_ID}"
  secret_key = "${AWS_SECRET_ACCESS_KEY}" 

}

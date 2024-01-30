provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAWM43CGW6WBBXELME"
  secret_key = "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"
}
resource "aws_sns_topic" "user_updates" {
  name = "user-updates-topic"
}

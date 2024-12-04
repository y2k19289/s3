# Create an S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  for_each = toset(var.bucket_name)
  bucket   = each.value
}

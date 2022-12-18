resource "aws_s3_bucket" "demos3" {
    bucket = "${var.bucket_name}" 
    acl    = "${var.acl_value}"   
}

resource "aws_s3_bucket_object" "example" {
  key        = "someobject"
  bucket     = aws_s3_bucket.demos3.id
  source     = "index.html"
  kms_key_id = aws_kms_key.examplekms.arn
}
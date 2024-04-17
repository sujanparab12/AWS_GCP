module "s3_bucket" {
  source =var.source

  bucket = var.bucket_name
  acl    = "private"

  control_object_ownership = true
  object_ownership         =var.object_ownership

  versioning = {
    enabled = true
  }
}
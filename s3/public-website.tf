
variable "region" {
    default = "eu-west-1"
}

variable "bucket_name" {
    default = "my-website-wegotpop-com"
}


resource "aws_s3_bucket" "static_website" {
    region = "${var.region}"
    bucket = "${var.bucket_name}"
    acl    = "public-read"

    website {
        index_document = "index.html"
        error_document = "error/index.html"
    }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "Anu_Bucket_1"

}


resource "aws_s3_bucket_policy" "my_bucket_policy" {
  bucket = aws_s3_bucket.my_bucket.bucket

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action    = "s3:GetObject"
        Effect    = "Allow"
        Resource  = "${aws_s3_bucket.my_bucket.arn}/*"
        Principal = "*"
        Condition = {
          IpAddress = {
            "aws:SourceIp" = "192.168.0.1/24"
          }
        }
      }
    ]
  })
}
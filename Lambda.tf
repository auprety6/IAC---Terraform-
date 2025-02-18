resource "aws_iam_role" "lambda_execution_role" {
  name               = "lambda_execution_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      },
    ]
  })
}
resource "aws_iam_policy_attachment" "lambda_logs_policy" {
  name       = "lambda_logs_policy"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  roles      = [aws_iam_role.lambda_execution_role.name]
}

resource "aws_lambda_function" "my_lambda" {
  function_name = "test_lambda_function"
  role          = aws_iam_role.lambda_execution_role.arn
  handler       = "Handler.py"   # The entry point in your code (for example, "index.handler" for Node.js)
  runtime       = "python22.2"      # The runtime for the Lambda (e.g., nodejs14.x, python3.9, etc.)

  # Lambda code source
  filename      = "lambda_function.zip"  # Path to your Lambda code ZIP file
  source_code_hash = filebase64sha256("lambda_function.zip")  # Automatically computes the file hash to avoid re-deployment

  environment {
    variables = {
      key = "value"  # You can define environment variables here
    }
  }

  # Memory and timeout configurations
  memory_size = 128  # Set the amount of memory for Lambda (in MB)
  timeout     = 60   # Timeout for Lambda execution in seconds
}


data "archive_file" "lambda_zip" {
  type        = "zip"
  source_dir  = "AWS_Lambda/Lambda_Code/Handler.py"  # Path to the directory containing your Lambda code
  output_path = "lambda_function.zip"    # Output path for the zip file
}
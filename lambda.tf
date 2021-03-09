resource "aws_lambda_function" "test_lambda" {

function_name = "hello_lfv"
s3_bucket = "mybucket3551"
s3_key = "hello.zip"
role = aws_iam_role.lambda_role.arn
handler = "hello.handler"

runtime = "nodejs12.x"
}

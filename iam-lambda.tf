resource "aws_iam_role_policy" "lambda_policy" {
	name = "lambda_policy"
	role = aws_iam_role.lambda_role.id

	policy = file("IAM/lambda_policy.json")
}

resource "aws_iam_role" "lambda_role" {
	name = "lambda_role"
	assume_role_policy = file("IAM/lambda_assume_role_policy.json")
} 

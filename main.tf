module "dynamo_db_courses" {
  source     = "./modules/dynamodb"
  table_name = "courses"
}

module "dynamo_db_authors" {
  source     = "./modules/dynamodb"
  table_name = "authors"
}

# module "lambda_api" {
#   source = "../modules/lambda-api"

#   function_name = module.naming.id
#   handler       = "index.handler"
#   lambda_zip    = "${path.module}../lambda-api.zip"
#   context       = module.naming.context
# }

# resource "aws_iam_role_policy_attachment" "test-attach" {
#   role       = aws_iam_role.role.name
#   policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
# }
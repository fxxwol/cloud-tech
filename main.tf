module "dynamo_db_courses" {
  source     = "./modules/dynamodb"
  table_name = "courses"
}

module "dynamo_db_authors" {
  source     = "./modules/dynamodb"
  table_name = "authors"
}

module "lambda" {
  source = "./modules/lambda"

  function_name = "function"
  filename = var.function_filename
}

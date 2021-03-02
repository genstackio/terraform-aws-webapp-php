module "lambda" {
  source             = "genstackio/lambda/aws"
  version            = "0.1.0"
  name               = var.name
  file               = var.package_file
  runtime            = var.runtime
  timeout            = var.timeout
  memory_size        = var.memory_size
  handler            = var.handler
  variables          = var.variables
  enabled            = var.enabled
  policy_statements  = var.policy_statements
  tags               = var.tags
  layers             = var.layers
}

module "apigw" {
  source     = "genstackio/apigateway2-api/aws"
  version    = "0.1.2"
  name       = var.name
  lambda_arn = module.lambda.arn
  cors       = true
}
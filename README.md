# AWS PHP Webapp Terraform module

Terraform module which creates a PHP Webapp (lambda + api gateway v2 api) on AWS.

## Usage

```hcl
module "webapp-php" {
  source       = "genstackio/webapp-php/aws"

  name         = "name-of-the-webapp"
  package_file = "/path/to/the/package.zip"
}
```

# Terraform AWS Lambda
Create a lambda and IAM role resource

## Variables
### Input
| Variables                 | Description                                               | Default |
|:--------------------------|:----------------------------------------------------------|:--------|
| company                   | Company name                                              |         |
| environment               | Environment name                                          |         |
| name                      | Name                                                      |         |
| lambda_name               | Lambda name                                               |         |
| service                   | Service name                                              |         |
| runtime                   | Fully qualified domain name to create the certificate for |         |
| handler                   | Id of the zone                                            |         |
| timeout                   | Lambda timeout                                            |         |
| memory_size               | Lambda memory size                                        | 128     |
| role_name                 | Name of the role                                          |         |
| serverless_repository     | S3 bucket for serverless repository                       |         |
| serverless_repository_key | Key for the asset in S3                                   |         |
| environment_variables     | Object of all the environment variables                   |         |
| tags                      | Tags for the certificate resources                        |         |

### Output
| Variables                 | Description                 |
|:--------------------------|:----------------------------|
| lambda_invoke_arn         | Invoke arn of the lambda    |
| lambda_arn                | Arn of the lambda           |

## How to
Specify the module source and the provider information.

### Sample
```
provider "aws" {
    region = ""
    shared_credentials_file = ""
}

module "lambda" {
    source = "github.com/Haplo-tech/Terraform.Module.AWS.Lambda"
    company = ""
    environment = ""
    name = ""
    service = ""
    runtime = ""
    handler = ""
    timeout = ""
    memory_size = ""
    serverless_repository = ""
    serverless_repository_key = ""
    environment_variables = ""
    tags = {}
}
```

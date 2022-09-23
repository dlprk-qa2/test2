module "dynamodb-table" {
  source    = "terraform-aws-modules/dynamodb-table/aws"
  version   = "3.1.1"
  name      = "testtable"
  hash_key  = "pk"
  range_key = "sk"

  attributes = [
    {
      name = "pk"
      type = "S"
    },
    {
      name = "sk"
      type = "S"
    }
  ]
}

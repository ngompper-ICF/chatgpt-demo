resource "aws_cloudformation_stack" "sort_json_stack" {
  name = "sort-json-stack"
  capabilities = ["CAPABILITY_NAMED_IAM"]
  template_body = file("sort_json.yml")
}
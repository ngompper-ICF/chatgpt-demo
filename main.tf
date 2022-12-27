resource "aws_cloudformation_stack" "sort_json_stack" {
  name = "sort-json-stack"
  template_body = file("sort_json.yml")
}
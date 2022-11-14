resource "circleci_context" "this" {
  name = var.context
}

resource "circleci_context_environment_variable" "var" {
  for_each   = var.environment
  variable   = each.key
  value      = each.value
  context_id = circleci_context.this.id
}
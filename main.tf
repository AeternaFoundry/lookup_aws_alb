data "aws_alb" "alb_lookup" {
  for_each = var.alb_lookup

  arn    = each.value.arn
  name   = each.value.name
  region = each.value.region
  tags   = each.value.tags
}


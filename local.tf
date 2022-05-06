locals {
  appservice_name   = lower(format("%s-%s", var.appservice_name, random_string.name_suffix.result))
}
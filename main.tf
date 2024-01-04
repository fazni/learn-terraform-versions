# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

resource "random_string" "server_output" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

output "instance_ip_addr" {
  value = random_string.server_output.id
}

output "variabletest" {
value = "Hello, ${random_string.server_output.id}!"
}

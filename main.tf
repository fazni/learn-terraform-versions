# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

resource "random_pet" "server_output" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

resource "output" {
value = random_pet.server_output.id
}

resource "intersight_thermal_policy" "thermal" {
  for_each = toset(["Balanced", "LowPower", "HighPower", "MaximumPower", "Acoustic"])

  name = lower(each.key)
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  fan_control_mode = each.key
}
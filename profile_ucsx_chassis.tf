resource "intersight_chassis_profile" "ucsx-chassis" {
  for_each = toset(["brattice-01"])

  name = each.key
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  target_platform = "FIAttached"
  type            = "instance"

  policy_bucket { # Power
    moid        = intersight_power_policy.grid_last_state.moid
    object_type = intersight_power_policy.grid_last_state.object_type
  }

  policy_bucket { # Thermal
    moid        = intersight_thermal_policy.thermal["LowPower"].moid
    object_type = intersight_thermal_policy.thermal["LowPower"].object_type
  }
}
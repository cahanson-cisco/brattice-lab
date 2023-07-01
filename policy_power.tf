resource "intersight_power_policy" "grid_last_state" {
  name = "grid_last_state"
  tags = [local.terraform]
  organization {
    moid = local.organization
  }

  power_profiling     = "Enabled"
  power_restore_state = "LastState"
  redundancy_mode     = "Grid"
}
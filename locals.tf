locals {
  terraform = {
    additional_properties = ""
    key                   = "Project"
    value                 = "BRATTICE-IMM"
  }
  organization = data.intersight_organization_organization.default.results[0].moid
}
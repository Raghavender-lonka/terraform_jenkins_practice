resource "newrelic_alert_policy" "foo" {
  # name = "example_terraform"
  
  # for_each = toset([for name in var.policiesName: name]) // looping through for_each 
  # name = each.value

  count = length(var.policiesNameList) // looping through count
  name = var.policiesNameList[count.index] // accessing the variables names through count.index

  incident_preference = "PER_POLICY" # PER_POLICY is default
}
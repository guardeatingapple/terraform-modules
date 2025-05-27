resource "routeros_system_scheduler" "schedule" {
  comment    = var.comment
  disabled   = var.disabled
  interval   = var.interval
  name       = var.name
  on_event   = var.on_event
  policy     = var.policy
  start_date = var.start_date
  start_time = var.start_time
}

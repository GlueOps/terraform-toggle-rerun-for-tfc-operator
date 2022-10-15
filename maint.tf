variable "TOGGLE_TO_RERUN" {
  type        = string
  description = "Toggle to rerun"
  default     = "1"
}

resource "time_static" "rerun" {
  triggers = {
    # Save the time each switch of an AMI id
    rerun = timestamp()
  }
}

output "time_ran" {
  value = time_static.rerun.rfc3339
}

variable "bucket" {
    type        = string
    default = "auta17-us-west-2-fiq-12-raw-images"
  
}
variable "storage_type" {
    default = "AllStorageTypes"
  
}
variable "alb_cw_grp_name" {
  description = "name of alb in cloudwatch metrics"
  type        = string
  default     = "app/carbon-alb/58b6a5f9c7e77513"
}
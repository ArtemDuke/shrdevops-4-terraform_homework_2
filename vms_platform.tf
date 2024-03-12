###cloud vars

### yandex_computee_image vars

variable "vm_db_image_name" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "os version"
}

### yandex_compute_instance vars

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "vm name"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "vm platform "
}

#variable "vm_db_core" {
#  type        = number
#  default     = 2
#  description = "vm cores count "
#}

#variable "vm_db_memory" {
#  type        = number
#  default     = 2
#  description = "vm memory size "
#}

#variable "vm_db_core_fraction" {
#  type        = number
#  default     = 5
#  description = "vm cores fraction "
#}

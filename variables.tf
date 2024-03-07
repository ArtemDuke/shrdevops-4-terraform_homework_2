###cloud vars
#variable "token" {
#  type        = string
#  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
#}

variable "cloud_id" {
  type        = string
  default     = "b1gbd8kqahpfgm804bvm"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1g7g4bpk8q1o4qs0jal"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

### yandex_computee_image vars

variable "vm_web_image_name" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "os version"
}

### yandex_compute_instance vars

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "vm name"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "vm platform "
}

variable "vm_web_core" {
  type        = number
  default     = 2
  description = "vm cores count "
}

variable "vm_web_memory" {
  type        = number
  default     = 2
  description = "vm memory size "
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 5
  description = "vm cores fraction "
}

###ssh vars

variable "vms_ssh_public_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFof2VuaywxMpHMKS8VpHpqwTWydrvSwClDqm5m9zwOE user@user-HP-ProBook-450-G4"
  description = "ssh public key"
}
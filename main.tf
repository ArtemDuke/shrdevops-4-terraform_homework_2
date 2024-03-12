resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

data "yandex_compute_image" "ubuntu-2004-lts" {
  family = var.vm_web_image_name
}
resource "yandex_compute_instance" "platform" {
  name        = local.vm_local_name
  platform_id = var.vm_web_platform_id
  resources {
    cores         = var.resources_vm["cores"]
    memory        = var.resources_vm["memory"]
    core_fraction = var.resources_vm["core_fraction"]
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu-2004-lts.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = {
    serial-port-enable = var.vms_ssh_public_root_key["port"]
    ssh-keys           = "ubuntu:var.vms_ssh_public_root_key[key]"
  }
}

resource "yandex_compute_instance" "db" {
  name        = local.db_local_name
  platform_id = var.vm_db_platform_id
  resources {
    cores         = var.resources_vm["cores"]
    memory        = var.resources_vm["memory"]
    core_fraction = var.resources_vm["core_fraction"]
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu-2004-lts.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = {
    serial-port-enable = var.vms_ssh_public_root_key["port"]
    ssh-keys           = "ubuntu:var.vms_ssh_public_root_key[key]"
  }
}

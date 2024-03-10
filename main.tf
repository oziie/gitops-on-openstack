resource "openstack_compute_instance_v2" "ci_cd_test_vm" {
  name      = var.OS_VM_NAME
  region    = var.OS_REGION_NAME
  image_name  = var.OS_IMAGE_NAME
  flavor_name = var.OS_FLAVOR_NAME
  key_pair  = var.OS_KEY_PAIR_NAME

  network {
    name = var.OS_NETWORK_NAME
  }
}

resource "terraform_data" "vm" {

  triggers_replace = {
        volume_id = openstack_blockstorage_volume_v3.volume_1.id
        attached_volume_id= openstack_compute_volume_attach_v2.attached_volume_1.id
}


  provisioner "remote-exec" {
    inline = [
      "mkdir -p /tmp/conf_vm/bash_scripts/",
    ]
  }

  provisioner "file" {
    source      = "./conf_vm/bash_scripts"
    destination = "/tmp"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod -R 777 /tmp/bash_scripts/",
      "bash /tmp/bash_scripts/config-vm.bash",
    ]
  }

  connection {
    type        = "ssh"
    user        = "root"
    password    = "Changeme1!"
#    private_key = "" #file(var.keyPath)
    host        = openstack_compute_instance_v2.ci_cd_test_vm.access_ip_v4
    script_path = "/root/terraform_%RAND%.sh"
  }


}
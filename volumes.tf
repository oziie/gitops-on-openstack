resource "openstack_blockstorage_volume_v3" "volume_1" {
  name = var.OS_VOLUME_NAME
  size = var.OS_VOLUME_SIZE
}

resource "openstack_compute_volume_attach_v2" "attached_volume_1" {
  instance_id = openstack_compute_instance_v2.ci_cd_test_vm.id
  volume_id  = openstack_blockstorage_volume_v3.volume_1.id
}
output "vm_ip" {
        description = "Access IP of the Openstack VM"
        value = openstack_compute_instance_v2.ci_cd_test_vm.access_ip_v4
}

output "vm_name" {
        description = "Access IP of the Openstack VM"
        value = openstack_compute_instance_v2.ci_cd_test_vm.name
}


output "vm_image_name" {
        description = "Access IP of the Openstack VM"
        value = openstack_compute_instance_v2.ci_cd_test_vm.image_name
}

output "vm_flavor_name" {
        description = "Access IP of the Openstack VM"
        value = openstack_compute_instance_v2.ci_cd_test_vm.flavor_name
}
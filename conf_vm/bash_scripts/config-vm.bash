#!/bin/bash

touch /root/CREATED_BY_TERRAFORM_THROUGH_GITLAB_CICD

# Disk operations
echo "/dev/vdb1 : start=     2048, size=   300GiB, type=8e" > vdb.sfdisk
sudo sfdisk /dev/vdb < vdb.sfdisk
pvcreate /dev/vdb1
vgcreate vg2 /dev/vdb1
lvcreate -n lv_opt -L 275G vg2 /dev/vdb1
mkfs.ext4 -L /opt /dev/vg2/lv_opt

# Mount operations
echo "/dev/mapper/vg2-lv_opt  /opt                            ext4    noatime 1 2" >> /etc/fstab
mount -a
systemctl daemon-reload
mount -a
 sudo fdisk -l
 lsblk
 sudo pvcreate /dev/sdc /dev/sdd
 sudo vgcreate vg_datos /dev/sdc
 sudo vgcreate vg_temp /dev/sdd
 sudo vgs
 sudo lvcreate --help
 sudo lvcreate -L 5M -n lv_docker vg_datos
 sudo lvcreate -L 1.5G -n lv_work vg_datos
 sudo lvrename vg_datos lv_work lv_workareas
 sudo lvcreate -L 512M -n lv_swap vg_temp
 lsblk
 sudo fdisk -l
 sudo lvreduce -L5M /dev/mapper/vg_datos-lv_docker
 sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
 sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
 sudo mkfs -t ext4 /dev/mapper/vg_temp-lv_swap
 sudo lsblk -f
 sudo mkswap /dev/mapper/vg_temp-lv_swap
 sudo lsblk -f
 sudo mkdir -p /var/lib/docker/ /work/
 sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
 sudo mount /dev/mapper/vg_datos-lv_workareas /work
 df -h
 ls
 vim /etc/fstab
 sudo mount | grep ' / '
 sudo mount -o remount,rw /
 sudo vim /etc/fstab
 vgdisplay
 sudo vgdisplay
 sudo lvdisplay
 sudo systemctl status docker
 history
 ls ~
 history | awk '{$1=""; print $0}' > ~/Punto_A.sh

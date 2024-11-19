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
 ls ~
 cat Punto_A.sh
 pwd
 ls -l
 cat foo
 cd foo
 ls -l
 cd ..
 git --version
 sudo mkdir repogit
 cd repogit/
 git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
 sudo git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
 ls -l
 cd UTN-FRA_SO_Examenes/
 ls -l
 ls -la
 UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
 $UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
 ./202406/script_Precondicion.sh
 source ~/.bashrc && history -a
 cd $HOME
 ls
 cd RTA_Examen_20241119/
 ls
 mv ~/Punto_A.sh /RTA_Examen_20241119/
 mv ~/Punto_A.sh ~/RTA_Examen_20241119/
 ls
 cat Punto_A
 cat Punto_A.sh
 history
 cd $HOME
 sudo docker info
 sudo systemctl status docker
 docker --version
 cd repogit/
 cd ..
 cd /usr/local/bin/
 ls -l
 touch LunaAltaUser-Groups.sh
 sudo touch LunaAltaUser-Groups.sh
 ls -l
 cd LunaAltaUser-Groups.sh
 vim LunaAltaUser-Groups.sh
 sudo vim LunaAltaUser-Groups.sh
 cat LunaAltaUser-Groups.sh
 sudo chmod 755 LunaAltaUser-Groups.sh
 ./LunaAltaUser-Groups.sh
 sudo vim LunaAltaUser-Groups.sh
 ./LunaAltaUser-Groups.sh
 cd $HOME
 ls
 cd repogit/
 ls
 cd UTN-FRA_SO_Examenes/
 ls
 cd 202406
 ls
 cd bash_script/
 ls
 cd /usr/local/bin
 ls
 sudo vim LunaAltaUser-Groups.sh
 ./LunaAltaUser-Groups.sh
 sudo vim LunaAltaUser-Groups.sh
 ./LunaAltaUser-Groups.sh
 sudo ./LunaAltaUser-Groups.sh
 sudo vim LunaAltaUser-Groups.sh
 ./LunaAltaUser-Groups.sh
 sudo vim LunaAltaUser-Groups.sh
 ./LunaAltaUser-Groups.sh
 sudo vim LunaAltaUser-Groups.sh
 ./LunaAltaUser-Groups.sh
 clear
 ./LunaAltaUser-Groups.sh
 sudo userdel -r 2P_202406_Prog1
 sudo id 2P_202406_Prog1
 sudo id 2P_202406_Prog2
 sudo userdel -r 2P_202406_Prog2
 sudo userdel -r 2P_202406_Test1
 sudo userdel -r 2P_202406_Supervisor
 sudo id 2P_202406_Prog2
 cat /etc/passwd
 sudo groupdel 2P_GDesa
 sudo groupdel 2P_GTest
 sudo groupdel 2PSupervisores
 ./LunaAltaUser-Groups.sh
 sudo cut -d: -f1 /etc/passwd
 groups
 groups 2P_202406_Prog1
 history | awk '{$1=""; print $0}' > ~/RTA_Examen_20241119/Punto_B.sh

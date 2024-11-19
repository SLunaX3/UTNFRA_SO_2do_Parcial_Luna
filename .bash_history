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
source  ~/.bashrc  && history -a
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
cat ~/RTA_Examen_20241119/Punto_B.sh
cd $HOME
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
docker --version
cd ~/repogit/UTN-FRA_SO_Examenes/202406/docker/
id
ls -l
id
cat <<EOF | docker login -u sonialunax3 --password-stdin
Sonial7799
q!

cd ~/repogit/UTN-FRA_SO_Examenes/202406/docker/
id
cd $HOME
cd RTA_Examen_20241119/
ls
sudo vim Punto_C.sh 
sudo systemctl status docker
docker --version
sudo systemctl restart docker
cd RTA_Examen_20241119/
./Punto_C.sh
sudo ./Punto_C.sh
sudo chmod 755 Punto_C.sh
sudo ./Punto_C.sh
sudo vim Punto_C.sh 
sudo ./Punto_C.sh
sudo vim Punto_C.sh 
sudo ./Punto_C.sh
sudo vim Punto_C.sh 
sudo ./Punto_C.sh
sudo vim Punto_C.sh 
sudo ./Punto_C.sh
docker system df
sudo docker system df
sudo fdisk -l
df -h
sudo ./Punto_C.sh
docker info | grep "BuildKit"
sudo docker info | grep "BuildKit"
echo "export DOCKER_BUILDKIT=1" >> ~/.bashrc
source ~/.bashrc
sudo vim /etc/docker/daemon.json
sudo systemctl restart docker
sudo ./Punto_C.sh
docker buildx create --use
sudo docker buildx create --use
sudo docker buildx ls
sudo ./Punto_C.sh
sudo docker buildx use confident_swanson
sudo docker buildx ls
sudo docker buildx inspect confident_swanson --bootstrap
sudo docker pull moby/buildkit:buildx-stable-1
sudo docker buildx create --name nuevo_builder --use
sudo docker buildx inspect nuevo_builder --bootstrap
sudo docker buildx ls
sudo docker buildx create --driver docker --name local_builder --use
sudo docker buildx create --driver dockerx --name local_builder --use
sudo docker buildx rm confident_swanson
sudo docker buildx rm nuevo_builder
sudo docker buildx rm default
sudo docker context rm default
$HOME
cd $HOME
sudo usermod -a -G docker vagrant
sudo usermod -a -G docker $(whoami)
grep docker /etc/group
id
ecit
exit
su vagrant
docker ps
sudo docker ps
exit
sudo systemctl ststus docker
sudo systemctl status docker
docker ps
cd RTA_Examen_20241119/
sudo ./Punto_C.sh
cd $HOME
mkdir UTNFRA_SO_2do_Parcial_Luna
cp -r ~/repogit/UTN-FRA_SO_Examenes/202406/ ~/UTNFRA_SO_2do_Parcial_Luna/
cd ~/UTNFRA_SO_2do_Parcial_Luna/
ls -l
cd ..
cp -r ~/RTA_Examen_20241119/ ~/UTNFRA_SO_2do_Parcial_Luna/
cd ~/RTA_Examen_20241119/
ls
ls -l
cd ~/UTNFRA_SO_2do_Parcial_Luna/
ls -l
cd $HOME
history -a
cd ~/UTNFRA_SO_2do_Parcial_Luna/
$HOME/.bash_history 
cp -r $HOME/.bash_history ~/UTNFRA_SO_2do_Parcial_Luna/
ls -l
cd $HOME
cp -r $HOME/.bash_history ~/UTNFRA_SO_2do_Parcial_Luna/
cd ~/UTNFRA_SO_2do_Parcial_Luna/
ls -l
cd ..

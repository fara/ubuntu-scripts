echo "------ CPU ------"
dmidecode -t 4 | grep Intel
echo "------ Hard Disk ------"
fdisk -l | grep GB
echo "------ RAM ------"
grep MemTotal /proc/meminfo
sudo dmidecode -t 17
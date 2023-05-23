#!/bin/bash
systemctl set-default multi-user.target
cp /etc/fstab /etc/fstab.backup
cat /etc/fstab.backup |grep ^'/' > /etc/fstab
rm -rf /etc/NetworkManager/system-connections/
nmcli connection add con-name lab19fail ifname ens32 type ethernet ip4 10.20.10.100/24
usermod -p '$6$a3h075z5uvIv5YJ$u98WrZNn2VIqWyrVesdHfxih7t7xwb698BvozmM0MUKDWUSVvrbs3ZOOFTHJIaNm8edKOdqhO2EIMgXr88R7d0' student
usermod -p '$6$a3h075z5uvIv5YJ$u98WrZNn2VIqWyrVesdHfxih7t7xwb698BvozmM0MUKDWUSVvrbs3ZOOFTHJIaNm8edKOdqhO2EIMgXr88R7d0' root
cp /boot/grub2/grub.cfg /boot/grub2/grub.cfg.backup
echo > /boot/grub2/grub.cfg
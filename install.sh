#!/bin/bash
sudo sed -i '110 s/# //' /etc/sudoers
sudo sed -i '107d' /etc/sudoers
sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install fedora-workstation-repositories bash-completion
sudo dnf config-manager --set-enabled google-chrome
sudo dnf update
sudo dnf -y install plasma-desktop plasma-nm bluedevil dolphin konsole kwrite ark spectacle kcalc plasma-discover kde-print-manager kscreen kde-partitionmanager plasma-systemmonitor  
sudo dnf -y install sddm sddm-kcm sddm-breeze plymouth-kcm plymouth-theme-breeze google-chrome-stable pciutils plasma-disks kinfocenter kde-connect kdeplasma-addons
sudo sed -i 15i\ 'InputMethod=' /etc/sddm.conf
sudo systemctl enable sddm
sudo systemctl enable bluetooth
sudo systemctl set-default graphical.target

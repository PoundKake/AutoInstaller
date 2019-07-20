#!/bin/bash
# Auto installer bash script.
# NOTE: should be run as root.

# Update aptitude repository.
apt update 

#-----------------------
# Spptify Dependancies
#-----------------------
# 1. Add the Spotify repository signing keys to be able to verify downloaded packages.
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90

# 2. Add the Spotify repository.
echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages.
apt update

# 4. Install Spotify
#apt install spotify-client


# List of packages to install.
INSTALL_PACKAGES="avr-libc avra avrdude avrdude-doc avrp binutils-avr flashrom gcc-avr gdb-avr uisp vim spotify-client chromium-browser arduino arduino-core ffmpeg ffmpeg-doc vlc tmux kicad kicad-common kicad-doc-en"

# Install all of the packages listed above.
apt install $INSTALL_PACKAGES -y

# Copy the autoinstaller 
cp -r ~/AutoInstaller/conf/ ~
cp ~/conf/.vimrc ~

# Update the bashrc config 
echo Backing up old .bashrc into ~/conf/.bashrc_OLD
echo ...
mv ~/.bashrc ~/.bashrc_OLD    # renaming the bashrc config
cp ~/conf/.bashrc ~
source ~/.bashrc    # apply the new .bashrc

# Apply all changes with upgrade.
apt upgrade -y
apt autoremove -y
source ~/.bashrc    # source bash rc again for changes to be applied.

# End Auto Installation
echo ------------------------
echo Auto Installer complete 
echo ------------------------


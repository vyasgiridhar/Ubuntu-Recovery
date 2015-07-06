#Ubuntu-Recovery
#!/bin/bash
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo add-apt-repository ppa:webupd8team/java
wget http://dl.dropbox.com/u/11876059/DPO_RT3290_LinuxSTA_V2600_20120508.tar.gz
tar -xvf DPO_RT3290_LinuxSTA_V2600_20120508.tar.gz
cd ~/DPO_RT3290_LinuxSTA_V2600_20120508
make
sudo make install
sudo modprobe rt3290sta
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install google-chrome-stable oracle-java8-installer oracle-java8-set-default youtube-dl ircii vlc geany


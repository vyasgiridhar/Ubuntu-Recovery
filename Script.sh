#Ubuntu-Recovery
#!/bin/bash
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo add-apt-repository ppa:webupd8team/java

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install google-chrome-stable oracle-java8-installer oracle-java8-set-default youtube-dl ircii vlc geany curl libgtkmm-3.0-dev conky git  
git clone git://github.com/gmate/gmate.git
cd gmate/
./install.sh 
sudo ./install.sh
sudo apt-get install gedit-plugins lm-sensors
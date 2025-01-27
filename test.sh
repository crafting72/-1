#!/bin/bash
cat > /etc/apt/sources.list.d/backports.sources.list <<END
deb http://ftp.debian.org/debian/ jessie-backports main contrib non-free
END
sudo apt update
sudo apt install apache2
sudo systemctl start apache2
sudo systemctl enable apache2
sudo apt-get install python3
sudo apt-get install ssh
sudo apt install openssh-server
sudo systemctl enable sshd
sudo service ssh start
sudo chkconfig ssh on
sudo apt-get install dh-autoreconf libcurl4-gnutls-dev libexpat1-dev \
  gettext libz-dev libssl-dev
sudo apt-get install asciidoc xmlto docbook2x
sudo apt-get install install-info
sudo ln -s /usr/bin/db2x_docbook2texi /usr/bin/docbook2x-texi
tar -zxf git-2.48.0.tar.gz
cd git-2.48.0
make configure
./configure --prefix=/usr
make all doc info
sudo make install install-doc install-html install-info
git clone git://git.kernel.org/pub/scm/git/git.git
sudo ufw allow 22
sudo ufw allow 80
sudo ufw enable
sudo adduser matthew
sudo adduser alexandra
uptime
uname -a
free -h
df -h
wget https://browser.yandex.ru/download/?banerid=6302000000&zih=1&beta=1&os=linux&x64=1&package=deb&full=1
sudo dpkg -i ~/Загрузки/yandex*.deb

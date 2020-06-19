#!/bin/bash
sudo cat > /etc/yum.repos.d/mariadb.repo <<EOL
# MariaDB 10.4 CentOS repository list - created 2020-06-13 16:37 UTC
# http://downloads.mariadb.org/mariadb/repositories/
[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/10.4/centos8-amd64
module_hotfixes=1
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1
EOL
sudo dnf makecache
sudo dnf install mariadb-server mariadb -y 
sudo systemctl enable --now mariadb
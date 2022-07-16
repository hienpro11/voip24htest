ifconfig
nmtui
service netowkr restart
service network restart
ping 8.8.8.8
nmtui
service network restart
ifup eth0
vi /etc/sysconfig/network-scripts/ifcfg-ens192 
nmtui
ping 203.162.56.208
ifconfig
reboot
passwd root
ifocnfig
ipconfig
ifconfig
ip add
nmtui
service network restart
ip add
ping 8.8.8.8
passwd root
hostnamectl 
yum install epel-release wget firewalld
yum install nano
nano /etc/selinux/config
reboot
nano /etc/hostname
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY*
yum -y install epel-release
yum -y install yum-priorities
nano /etc/yum.repos.d/epel.repo
yum -y update
yum -y groupinstall 'Development Tools'
yum update
yum update --skip-broken
yum update
 rpm -Va --nofiles --nodigest
yum -y install quota
yum update
hostnamectl 
yum -y install epel-release
yum update
systemctl start firewalld
systemctl enable firewalld
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https
firewall-cmd --permanent --add-port=8080/tcp
firewall-cmd --permanent --remove-service=dhcpv6-client
firewall-cmd --reload
firewall-cmd --list-all
nano /etc/hosts
nano /etc/hostname
nano /etc/selinux/config
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY*
yum -y install yum-priorities
nano /etc/yum.repos.d/epel.repo
yum -y update
systemctl stop firewalld.service
systemctl disable firewalld.service
yum -y install nano wget net-tools NetworkManager-tui
ifconfig
df -h
nano /etc/sysconfig/network-scripts/ifcfg-ens33
nano /etc/sysconfig/network-scripts/ifcfg-ens192
cat /etc/resolv.conf
nano /etc/hosts
systemctl stop firewalld.service
systemctl disable firewalld.service
iptables -L
firewall-cmd --state
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY*
rpm -ivh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-11.noarch.rpm
rpm -ivh http://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
yum -y install yum-priorities
nano /etc/yum.repos.d/epel.repo
yum update
Error: Package: systemd-libs-219-57.el7.i686 (base)
           Requires: liblz4.so.1
yum --setopt=tsflags=noscripts update
yum -y update --setopt=tsflags=noscripts update
yum -y update --skip-broken
yum check
yum  --setopt=protected_multilib=false
wget https://centos7.iuscommunity.org/ius-release.rpm
wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
yum install epel-release
rpm -ivh ius-release.rpm remi-release-7.rpm
yum -y groupinstall 'Development Tools'
yum update
 yum install systemd-libs
yum install systemd
yum clean packages
 yum clean all
yum update
rpm -Va --nofiles --nodigest
yum update  --skip-broken
yum check
yum update
clear
mount | grep ' / '
mount | grep ' /var '
nano /etc/default/grub
cp /boot/grub2/grub.cfg /boot/grub2/grub.cfg_bak
grub2-mkconfig -o /boot/grub2/grub.cfg
reboot
mount | grep ' / '
yum -y install ntp httpd mod_ssl mariadb-server php php-mysql php-mbstring phpmyadmin
yum -y install dovecot dovecot-mysql dovecot-pigeonhole
touch /etc/dovecot/dovecot-sql.conf
ln -s /etc/dovecot/dovecot-sql.conf /etc/dovecot-sql.conf
systemctl enable dovecot
systemctl start dovecot
yum -y install postfix
systemctl enable mariadb.service
systemctl start mariadb.service
systemctl stop sendmail.service
systemctl disable sendmail.service
systemctl enable postfix.service
systemctl restart postfix.service
yum -y install getmail
mysql_secure_installation
systemctl enable  httpd.service
systemctl restart  httpd.service
yum -y install amavisd-new spamassassin clamav clamd clamav-update unzip bzip2 unrar perl-DBD-mysql
nano /etc/freshclam.conf
sa-update
freshclam 
yum -y install php php-devel php-gd php-imap php-ldap php-mysql php-odbc php-pear php-xml php-xmlrpc php-pecl-apc php-mbstring php-mcrypt php-mssql php-snmp php-soap php-tidy curl curl-devel perl-libwww-perl ImageMagick libxml2 libxml2-devel mod_fcgid php-cli httpd-devel php-fpm
cd /usr/local/src
wget http://suphp.org/download/suphp-0.7.2.tar.gz
tar zxvf suphp-0.7.2.tar.gz
wget -O suphp.patch https://lists.marsching.com/pipermail/suphp/attachments/20130520/74f3ac02/attachment.patch
patch -Np1 -d suphp-0.7.2 < suphp.patch
cd suphp-0.7.2
autoreconf -if
cd suphp-0.7.2
autoreconf -if
cd /usr/local/src
wget http://suphp.org/download/suphp-0.7.2.tar.gz
tar zxvf suphp-0.7.2.tar.gz
wget -O suphp.patch https://lists.marsching.com/pipermail/suphp/attachments/20130520/74f3ac02/attachment.patch
patch -Np1 -d suphp-0.7.2 < suphp.patch
cd suphp-0.7.2
autoreconf -if
./configure --prefix=/usr/ --sysconfdir=/etc/ --with-apr=/usr/bin/apr-1-config --with-apache-user=apache --with-setid-mode=owner --with-logfile=/var/log/httpd/suphp_log
make
make install
cd /usr/local/src
wget http://suphp.org/download/suphp-0.7.2.tar.gz
tar zxvf suphp-0.7.2.tar.gz
./configure --prefix=/usr/ --sysconfdir=/etc/ --with-apr=/usr/bin/apr-1-config --with-apache-user=apache --with-setid-mode=owner --with-logfile=/var/log/httpd/suphp_log
make
make install
ls
cd suphp-0.7.2
./configure --prefix=/usr/ --sysconfdir=/etc/ --with-apr=/usr/bin/apr-1-config --with-apache-user=apache --with-setid-mode=owner --with-logfile=/var/log/httpd/suphp_log
make
cd
wget -O suphp.patch https://lists.marsching.com/pipermail/suphp/attachments/20130520/74f3ac02/attachment.patch
patch -Np1 -d suphp-0.7.2 < suphp.patch
cd suphp-0.7.2
cd /usr/local/src
ls
patch -Np1 -d suphp-0.7.2 < suphp.patch
cd suphp-0.7.2
autoreconf -if
ls
make
ls
cd
ls
rm -rf suphp.patch 
ls
cd /usr/local/src
ls
rm -rf suphp
rm -rf suphp*
ls
cd ..
ls
cd src/
cd /usr/local/src
wget http://suphp.org/download/suphp-0.7.2.tar.gz
tar zxvf suphp-0.7.2.tar.gz
ls
cd suphp-0.7.2
ls
./configure --prefix=/usr/ --sysconfdir=/etc/ --with-apr=/usr/bin/apr-1-config --with-apache-user=apache --with-setid-mode=owner --with-logfile=/var/log/httpd/suphp_log
make
 autoreconf -vif
./configure --prefix=/usr/ --sysconfdir=/etc/ --with-apr=/usr/bin/apr-1-config --with-apache-user=apache --with-setid-mode=owner --with-logfile=/var/log/httpd/suphp_log
make
systemctl start php-fpm.service
systemctl enable php-fpm.service
systemctl enable httpd.service
service httpd restart
systemctl enable php-fpm.service
service httpd restart
systemctl start php-fpm.service
systemctl restart  php-fpm.service
systemctl restart httpd.service
service httpd status
yum -y install python-devel
cd
cd /usr/local/src/
wget http://dist.modpython.org/dist/mod_python-3.5.0.tgz
tar xfz mod_python-3.5.0.tgz
cd mod_python-3.5.0
./configure
make
make install
echo 'LoadModule python_module modules/mod_python.so' > /etc/httpd/conf.modules.d/10-python.conf
systemctl restart httpd.service
yum -y install pure-ftpd
systemctl enable pure-ftpd.service
systemctl start pure-ftpd.service
cd
yum install openssl
mkdir -p /etc/ssl/private/
openssl req -x509 -nodes -days 7300 -newkey rsa:2048 -keyout /etc/ssl/private/pure-ftpd.pem -out /etc/ssl/private/pure-ftpd.pem
chmod 600 /etc/ssl/private/pure-ftpd.pem
systemctl restart pure-ftpd.service
yum -y install bind bind-utils
cp /etc/named.conf /etc/named.conf_bak
cat /dev/null > /etc/named.conf
nano /etc/named.conf
touch /etc/named.conf.local
systemctl enable named.service
systemctl start named.service
yum -y install webalizer awstats perl-DateTime-Format-HTTP perl-DateTime-Format-Builder
cd /tmp
wget http://olivier.sessink.nl/jailkit/jailkit-2.17.tar.gz
tar xvfz jailkit-2.17.tar.gz
cd jailkit-2.17
./configure
make
make install
cd ..
rm -rf jailkit-2.17*
yum -y install fail2ban
systemctl enable fail2ban.service
systemctl start fail2ban.service
yum -y install rkhunter
yum -y install mailman
touch /var/lib/mailman/data/aliases
/usr/lib/mailman/bin/newlist mailman
touch /etc/aliases
vi /etc/aliases
newaliases
systemctl restart postfix.service
systemctl restart httpd.service
systemctl enable mailman.service
systemctl start mailman.service
systemctl status mailman.service
yum -y install roundcubemail
systemctl restart httpd.service
mysql -u root -p
systemctl restart httpd.service
cd /tmp
wget http://www.ispconfig.org/downloads/ISPConfig-3-stable.tar.gz
tar xfz ISPConfig-3-stable.tar.gz
cd ispconfig3_install/install/
php -q install.php
systemctl restart mailman.service
yum install php56-php-bcmath php56-php-cli php56-php-common php56-php-fpm php56-php-gd php56-php-intl php56-php-mbstring php56-php-mcrypt php56-php-mysqlnd php56-php-opcache php56-php-pdo php56-php-pear php56-php-pecl-uploadprogress php56-php-soap php56-php-xml php56-php-xmlrpc
yum install epel-release 
wget https://centos7.iuscommunity.org/ius-release.rpm
wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
rpm -ivh ius-release.rpm remi-release-7.rpm
wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
rpm -ivh ius-release.rpm remi-release-7.rpm
yum update
yum update --skip-broken
clear
yum update -y
rpm -ivh ius-release.rpm remi-release-7.rpm
warning: remi-release-7.rpm: Header V4 DSA/SHA1 Signature, key ID 00f97f56: NOKEY
yum install epel-release -y
epel-release-7-11.noarch already installed and latest versionrpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY*
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY*
yum -y install epel-release
cd /usr/local/src/
wget https://rpms.remirepo.net/enterprise/remi-release-7.rpm
 rpm -Uvh remi-release-7.rpm
rpm -ivh ius-release.rpm remi-release-7.rpm
ls
 cd /usr/local/src/
wget https://rpms.remirepo.net/enterprise/remi-release-7.rpm
ls
rpm -Uvh remi-release-7.rpm
yum install httpd24u mod24u_ssl mo24u_session mod_fcgid mod_xsendfile
yum install yum-plugin-replace
yum install php php-bcmath php-cli php-common php-gd php-intl php-mbstring php-mysqlnd php-pdo php-pear php-soap php-xml php-xmlrpc php-fpm
yum install php56-php-bcmath php56-php-cli php56-php-common php56-php-fpm php56-php-gd php56-php-intl php56-php-mbstring php56-php-mcrypt php56-php-mysqlnd php56-php-opcache php56-php-pdo php56-php-pear php56-php-pecl-uploadprogress php56-php-soap php56-php-xml php56-php-xmlrpc
systemctl start php56-php-fpm
systemctl enable php56-php-fpm
yum install php70-php-bcmath php70-php-cli php70-php-common php70-php-fpm php70-php-gd php70-php-intl php70-php-json php70-php-mbstring php70-php-mcrypt php70-php-mysqlnd php70-php-opcache php70-php-pdo php70-php-pear php70-php-pecl-uploadprogress php70-php-pecl-zip php70-php-soap php70-php-xml php70-php-xmlrpc
systemctl start php70-php-fpm
systemctl enable php70-php-fpm
serivce httpd rétart
service httpd restart
service php-fpm restart
clear
cd
yum install git*
git status
git config --global user.name "HAN DESK"
$ git config --global user.email johndoe@example.com
git config --global user.email handeskdotvn@gmail.com
git config --global merge.tool vimdiff
git config --global core.editor emacs
git config --list
cd /var/wwww
ls
cd /var/www
ls
cd report.handesk.xyz/
ls
cd web
ls
echo "# report.handesk.xyz" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/handeskim/report.handesk.xyz.git
git push -u origin master
git git remote add origin https://github.com/handeskim/report.handesk.xyz.git
git remote add origin https://github.com/handeskim/report.handesk.xyz.git
git push -u origin master
nano ~/.gitconfig
ssh-keygen -t rsa -b 4096 -C "handeskdotvn@gmail.com"
cd /root/.ssh/
;s
ls
ls -al ~/.ssh
clip < ~/.ssh/id_rsa.pub
yum install clip 
clip < ~/.ssh/id_rsa.pub
nano  ~/.ssh/id_rsa.pub
cd /var/www
ls
cd report.handesk.xyz/
ls
cd web
git remote add origin https://github.com/handeskim/report.handesk.xyz.git
git push -u origin master
yum update -y nss curl libcurl
git remote add origin https://github.com/handeskim/report.handesk.xyz.git
git push -u origin master
git pull
yum install sox
ls
clear
ls
yum install lame 
nano convert.sh
ls
chmod =R 0777 convert.sh 
chmod -R 0777 convert.sh 
./convert.sh file.gsm
./convert.sh file.gsm file.wav
clear
sox -t gsm file.gsm outfile.mp3 
sox -t gsm file.gsm ./outfile.mp3 
clear
ls
wget ftp://ftp.pbone.net/mirror/yum.trixbox.org/centos/5/trixswitch/lame-3.97-1.el5.rf.i386.rpm
rpm -i lame-3.97-1.el5.rf.i386.rpm
./convert.sh
cd /var/www
ls
cd report.handesk.xyz/
ls
cd web
ls
git add*
git add *
git commit -m "server add fist"
git push
git pull
git checkout
cd 
ls
sox file.gsm -r 44100 - a file.wav
sox file.gsm -r 44100 -a file.wav
sox file.gsm -r 44100 -e ms-adpcm  file.wav
ls
sox file.wav -c2 files.wav
lame -h files.wav file.mp3
ls
lame -h file.wav file.mp3
lame -t -v7 file.wav file.mp3
lame -t -v7 files.wav file.mp3
lame -h -b 192 files.wav file.mp3
lame -h -b 192 file.wav file.mp3
yum install lame
ls
rm -rf files.wav 
rm -rf file.wav 
sox file.gsm -r 44100 -e file.wav
sox file.gsm -r 44100 -e ms-adpcm  file.wav
ls
sox file.gsm -r 8000 -c 1 -w -s ouput.wav
sox file.gsm -r 8000 -c1 ouput.wav
ls
sox file.gsm -t 8000 -c1 ouputs.wav
sox file.gsm -r 8000 -c1 ouputs.mp3
sox file.gsm -r 8000 -c1 ouputs.wav
sox file.gsm -r 8000 -c1 -w -s ouputv.wav
sox file.gsm -r 8000 -c1 -w -e ouputv.wav
sox file.gsm -r 8000 -c1 -v -e ouputv.wav
sox file.gsm -r 8000 -c1 -vouputv.wav
sox file.gsm -r 8000 -c1 -v ouputv.wav
sox file.gsm -r 8000 -c1 ouputv.wav
ls
sox --help
sox -t gsm file.gsm filex.mp3
sox -t gsm file.gsm filex.wav
ls
sox -V -t  file.gsm -r 8000 -c1 ouputv.wav
sox -V -t  file.gsm -r 8000  ouputv.wav
sox -V -t file.gsm  ouputv.wav
sox -V -t file.gsm  ouput.wav
sox -t file.gsm  ouput.wav
ls
sox -r 8000 -c 1 file.gsm file.wav
clear
sox -V out-01697974621-110-20180725-112142-1532492501.47125.gsm out-01697974621-110-20180725-112142-1532492501.47125.mp3
sox -V out-01697974621-110-20180725-112142-1532492501.47125.gsm out-01697974621-110-20180725-112142-1532492501.47125.wav
/usr/local/bin/sox -V out-01697974621-110-20180725-112142-1532492501.47125.gsm out-01697974621-110-20180725-112142-1532492501.47125.wav
sox -V out-01697974621-110-20180725-112142-1532492501.47125.gsm out-01697974621-110-20180725-112142-1532492501.47125.wav
ls
rm -rf out-01697974621-110-20180725-112142-1532492501.47125.wav 
ls
/usr/bin/sox out-01697974621-110-20180725-112142-1532492501.47125.gsm out-01697974621-110-20180725-112142-1532492501.47125.wav
ls
/usr/bin/sox -V out-0909856202-107-20180719-142454-1531985094.4467.gsm out-0909856202-107-20180719-142454-1531985094.4467.wav
cat /less /proc/cpuinfo
less /proc/cpuinfo
cat /proc/cpuinfo
clear
mysql -uroot -p
service firewall stop
service iptables stop
ifconfig
mysql -uroot -p
cd /var/www
cd  web
ls
cd report.handesk.xyz/
ls
cd we
cd web
ls
git pull
git rm *
git -rm *
git rm *
git rm -all
git rm -r
git ls-files --deleted -z | xargs -0 git rm
ls
ls -la
git pull
rm -rf stats/
ls
git pull
clear
ls
ls -la
ls
lame -v
cd /var/www
ls
cd report.handesk.xyz/
ls
cd web
ls
cd raw/
ls
cd 20/
ls
cd 20180729/
ls
lame -h f8ab5e7a119a7656b16c6dbff3e445db.wav f8ab5e7a119a7656b16c6dbff3e445db.mp3
sox -A -c 1 -r 8000 f8ab5e7a119a7656b16c6dbff3e445db.wav f8ab5e7a119a7656b16c6dbff3e445db2.wav
sox -e -c 1 -r 8000 f8ab5e7a119a7656b16c6dbff3e445db.wav f8ab5e7a119a7656b16c6dbff3e445db2.wav
sox -e a-law -c 1 -r 8000 f8ab5e7a119a7656b16c6dbff3e445db.wav f8ab5e7a119a7656b16c6dbff3e445db2.wav
clear
ls
rm -rf
rm -rf *
ls
sox 1e6fc0f86ab2f792eae4282cea92a297.wav 1e6fc0f86ab2f792eae4282cea92a297.cdr
sox 1e6fc0f86ab2f792eae4282cea92a297.wav 1e6fc0f86ab2f792eae4282cea92a297.mp3
sox 1e6fc0f86ab2f792eae4282cea92a297.wav 1e6fc0f86ab2f792eae4282cea92a297.ogg
top
poweroff 
top
dig mail.reviveshop.vn
dig mail.reviveshop.vn A
clear
dig mail.reviveshop.vn A
dig mail.reviveshop.vn MX
dig reviveshop.vn MX
ls
mysql -u root -p
cd /var/www/clients/client0/web2/web
ls
rm -rf *
ls
clear
ls
php /var/www/clients/client0/web2/web/index.php task start
php /var/www/clients/client0/web2/web/index.php task sync
ls
cd /var/www/clients/client0/web2/web
;s
ls
cd
zip -r task.zip /var/www/clients/client0/web2/web/*
ls
mkdir check
ls
cp task.zip check/
ls
cd check/
lls
ls
unzip -d task.zip 
unzip task.zip  
ls
cd va
cd var/
ls
cd www/
ls
cd clients/
ls
cd client0/
ls
cd web2/
ls
cd web/
ls
cd .
ls
cd ~
ls
rm -rf check/
ls
rm -rf task.zip 
ls
cd var/www/clients/client0/web2/web/
cd /var/www/clients/client0/web2/web/
ls
cd ..
ls
zip task.zip web/*
zip /task.zip web/*
zip /task.zip web*
ls
cd
ls
cd /root
ls
cd home
ls
cd /var/www/clients/client0/web2/web/
ls
zip task.zip *
ls
mkdir test_zip 
mv task.zip test_zip/
ls
cd ..
ls
cd web
ls
cd test_zip/
ls
unzip task.zip 
ls
cd 
ls
cd /var/www/clients/client0/web2/web
ls
rm test_zip/
ls
rm -rf  test_zip/
ls
zip task.zip /*
ls
rm -rf task.zip 
ls
zip task.zip /var/www/clients/client0/web2/web/*
ls
mkdir source
mv task.zip  source/
ls
cd source/
ls
unzip task.zip 
cd 
cd /var/www/clients/client0/web2/web
ls
zip -r source.zip *.*
ls
zip -r source.zip *
ls
rm -rf source*
ls
zip -r source.zip *
ls
mkdir trunk
mv source.zip trunk/
ls
cd trunk/
ls
unzip -d source.zip 
unzip source.zip 
ls
rm -rf application/
rm -rf system/
rm -rf stats/
ls
cp source.zip /var/www/clients/client0/web1/web/trunk/
cd /var/www/clients/client0/web2/web
ls
zip -r source.zip *
ls
rm -rf trunk/
ls
mkdir trunk
mv source.zip trunk/
ls
cd  trunk/
ls
cp source.zip /var/www/clients/client0/web1/web/trunk/
cd ..
ls
rm -rf trunk/
ls
zip -r source.zip *
mkdir trunk
cp source.zip /var/www/clients/client0/web1/web/trunk/
cp source.zip trunk/
ls
/usr/bin/php https://task1.handesk.xyz/task/sync
php https://task1.handesk.xyz/task/sync
/usr/bin/php /var/www/clients/client0/web2/web/index.php task sync
service crond status
service crond restart
crondtab -e
crontab -e
service crond restart
clear
cd /var/www/clients/client0/web2/web/
ls
rm -rf trunk/
rm -rf source.zip 
zip -r source.zip *
ls
cp source.zip /var/www/clients/client0/web1/web/trunk/
cd /var/www/clients/client0/web1/
ls
cd web
mkdir mingation
ls
zip -r source-100323082018.zip *
ls
mv source-100323082018.zip trunk/
ls
cd  trunk/
ls
mysqldump database_name > database_name.sql
mysqldump -u USER -p asterisk_center
mysqldump -u root -p asterisk_center
ls
cd..
cd
ls
cd /var/www
cd
ls
cd /var/www/
ls
cd report.handesk.xyz/
;s
ls
cd web
;s
ls
cd trunk/
ls
zip -r truck_mingration *
ls
top
yum install pearl
 pear list
yum install php-pear*
service httpd restart
pear install PEAR_Exception
pear channel-update pear.php.net
php pyrus.phar install pear/PEAR_Exception
yum install Pyrus
cd 
cd /usr/lib/php/
wget https://pear2.php.net/pyrus.phar
php pyrus.phar install pear/Config
ls
cd php/
ls
cd Config/
ls
cd
pear install PEAR_Exception-1.0.0
php pyrus.phar install pear/PEAR_Exception-1.0.0
sudo apt-get install wget

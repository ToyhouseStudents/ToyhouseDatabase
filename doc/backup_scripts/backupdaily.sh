#!/bin/bash
basedir=/root/database-2012/backup/daily

PATH=/bin:/usr/bin:/sbin:/usr/sbin; export PATH
export LANG=C

xampp=$basedir/xampp
mysql=$basedir/mysql

basefile_xampp=$xampp/xampp.$(date +%Y-%m-%d).tar.bz2
basefile_mysql=$mysql/mysql.$(date +%Y-%m-%d).sql

for dirs in $xampp $mysql
do
	[ ! -d "$dirs" ] && mkdir -p $dirs
done

cd /opt/lampp
	tar -jpc -f $basefile_xampp htdocs
cd $mysql
	/opt/lampp/bin/mysqldump -u root -pRUNrun,pantaovay toyhouse > $basefile_mysql

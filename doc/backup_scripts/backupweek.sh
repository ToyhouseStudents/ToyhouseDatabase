#!/bin/bash
basedir=/root/database-2012/backup/weekly

PATH=/bin:/usr/bin:/sbin:/usr/sbin; export PATH
export LANG=C

ftp=$basedir/ftp
xampp=$basedir/xampp
mysql=$basedir/mysql
xamppsh=$basedir/xamppsh

for dirs in $ftp $xampp $mysql $xamppsh
do
	[ ! -d "$dirs" ] && mkdir -p $dirs
done

/opt/lampp/lampp backup RUNrun,pantaovay

cp -a /var/ftp/*	$ftp
cp -a /opt/lampp/*	$xampp
cp -a /opt/lampp/backup/*	$xamppsh
cd $mysql
	/opt/lampp/bin/mysqldump -u root -pRUNrun,pantaovay toyhouse > toyhouse.$(date +%Y-%m-%d).sql

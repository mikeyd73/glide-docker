#!/bin/bash

base='/glide/mysql/5.6.16'
pkg='glide-mysql-5.6.16-5.6.16-0.1.SNC.x86_64'
home='/glide/mysql'

__install_mysql(){
  adduser mysql
  yum clean all
  yum -y install "${pkg}"
  ls -al "${base}"
  cp ${base}/bin/* /usr/bin/
  cp ${base}/scripts/* /usr/bin/
  ln -s "${base}" /usr/local/mysql
  mkdir -p "${home}/share"
  mkdir -p "${home}/temp"
  mkdir -p "${home}/data"
  chown -R mysql:mysql "${home}"
}

__mysql_config() {
echo "Running the mysql_config function."
mysql_install_db --user=mysql --basedir="${base}" --datadir=/glide/mysql/data
}

# Call all functions
__install_mysql

__mysql_config

#!/bin/bash

__install_sshd(){
   sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
   mkdir /var/run/sshd
   sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
   #ENV NOTVISIBLE "in users profile"
   echo "export VISIBLE=now" >> /etc/profile
}
# Call all functions
__install_sshd

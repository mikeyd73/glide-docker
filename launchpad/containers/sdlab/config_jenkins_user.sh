#!/bin/bash

__install_user(){
   local HOME='/mnt/jenkins'
   local USERNAME='jenkins'
   groupadd -g 31114 $USERNAME
   useradd -M -u 31114 -g 31114 -d $HOME -s /bin/bash -p '$6$g7EKlgCR$OyzZCC4w7ezr.RGTd9oII/xEuCLNYJK81cRIXABlxvdFUKXlWgtgAyN9KmPKOpJLog8MkOf8gL0s4TLGebrLW.' $USERNAME

    mkdir -p /mnt/jenkins/work/maven-repositories
    mkdir -p /mnt/jenkins/work/workspace
    ln -s /mnt/jenkins/work/workspace/ /mnt/jenkins/workspace
    wget http://repo/syseng/dba/jenkins-home-sdlab-java8.tar.gz
    tar xzvf jenkins-home-sdlab-java8.tar.gz -C /
    chown -R jenkins:jenkins /mnt
}
# Call all functions
__install_user

# basic linux install setup notes

## install utils 
(yum = apt on debian/ubuntu, etc)

    sudo yum install -y cockpit cockpit-docker
    sudo yum install -y htop 
    sudo yum install -y tree #-L 2

## prevent memory hangs in prod (n.b. ensure monitoring)
https://linuxize.com/post/create-a-linux-swap-file/

    sudo fallocate -l 1G /swapfile
    sudo dd if=/dev/zero of=/swapfile bs=1024 count=1048576
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile

modify `/etc/fstab` with `/swapfile swap swap defaults 0 0`

verify with `sudo swapon --show`

## ufw
https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands

    sudo ufw allow ssh <MYIP>
    sudo ufw allow http https
    ufw enable

## nginx
http://nginx.org/en/docs/beginners_guide.html#proxy

## docker

    docker update --restart=unless_stopped container_name
    docker top container_name

## AWS linux

    # sudo yum-config-manager --enable epel
    sudo yum update
    sudo yum install inotify-tools

(persist: update `/etc/yum.repos.d/epel.repo` - epel section, change `enabled=0` to `=1`)
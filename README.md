# ansible

Packages and files to intstall

- curl
- xclip


Public and private key to get at github

- zsh
- ohmyzsh

- Docker + docker compose (sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
)

- Jetbrains toolbox
- sdkman

### Menome specific stuff
- mattermost
- nodejs
- npm
 

https://opensource.com/article/18/3/manage-workstation-ansible



```
$ sudo apt update
$ sudo apt install software-properties-common
$ sudo apt-add-repository --yes --update ppa:ansible/ansible
$ sudo apt install ansible
```

```
ansible-pull -U https://github.com/ToddCostella/desktop-ansible/
```

On remote machine
```shell script
$ sudo visudo

We need to edit the line
%sudo   ALL=(ALL:ALL) ALL
and look like this:
%sudo  ALL=(ALL:ALL) NOPASSWD: ALL
```


```shell script
ansible-galaxy install kevincoakley.neo4j
ansible-galaxy isntall geerlingguy.rabbitmq
ansible-galaxy collection install ericsysmin.docker
ansible-galaxy install andrewrothstein.minikube
ansible-galaxy install geerlingguy.redis
```

Local machine
/etc/ansible/hosts

```
<remote ip/digital ocean etc>
167.99.176.53 ansible_user=root
```

Other useful bits
```shell script
ansible -m ping all
```

Upgrade erlang before running. 
https://computingforgeeks.com/how-to-install-latest-erlang-on-ubuntu-linux/
Look into a specific erlang ansible role instead of having the rabbit one attempt to resolve it

Neo4J memory settings

```
  neo4j-admin memrec  
  sudo nano /etc/neo4j/neo4j.conf 
```
```  sudo systemctl restart neo4j ```


Avoid the hanging boot menu on Ubuntu 19
```
sudo apt update
sudo rm /boot/grub/menu.lst
sudo update-grub-legacy-ec2 -y
udo apt -y upgrade
sudo reboot
```
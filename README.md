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
ansible-galaxy geerlingguy.rabbitmq
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
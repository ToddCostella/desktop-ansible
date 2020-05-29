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



```
 neo4j /etc/neo4j

 neo4j sudo nano neo4j.conf 
 neo4j sudo systemctl restart neo4j 


# With default configuration Neo4j only accepts local connections.
# To accept non-local connections, uncomment this line:
dbms.default_listen_address=0.0.0.0

# You can also choose a specific network interface, and configure a non-default
# port for each connector, by setting their individual listen_address.

# The address at which this server can be reached by its clients. This may be the server's IP address or DNS name, or
# it may be the address of a reverse proxy which sits in front of the server. This setting may be overridden for
# individual connectors below.
dbms.default_advertised_address=167.99.176.53
```

```
rabbitmq-plugins enable rabbitmq_management
rabbitmqctl add_user "todd" "password"
rabbitmqctl set_user_tags test administrator
rabbitmqctl set_user_tags todd administrator
rabbitmqctl set_permissions -p / todd ".*" ".*" ".*"


````
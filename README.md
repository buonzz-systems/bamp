BAMP
====

Vagrant Box for Buonzz Platform

###Requirements

* VirtualBox
* Vagrant

###Installation

In command line:

```
    git clone https://github.com/buonzz-systems/bamp.git
	cd bamp
	vagrant up
```

Wait until the installation is finish. Then login to the box by

```
    vagrant ssh
```

Add the following line in your local hosts  file

```

	192.168.33.60 bamp.dev
```

### Usage

Visit  http://bamp.dev to get started.



You can inspect the database by going to  http://bamp.dev/phpmyadmin

username: root
password: buonzz

You can also access the MongoDB via http://bamp.dev/rockmongo

username: admin
password: admin

#### Networking

The VM basically creates a virtual private LAN IP pointing into 192.168.33.60


#### Logging in as root

you can either use sudo or "sudo -i" to execute commands as root


#### Install Redis

```
vagrant ssh
sudo sh /vagrant/installers/setup_redis.sh
```

#### Install Oracle Java

```
vagrant ssh
sudo sh /vagrant/installers/setup_oracle_java.sh
```

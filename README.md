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

	192.168.33.60 devtools.buonzz.com
```

### Usage

Visit  http://devtools.buonzz.com to get started.



You can inspect the database by going to  http://devtools.buonzz.com/phpmyadmin

username: root
password: buonzz

You can also access the MongoDB via http://devtools.buonzz.com/rockmongo

username: admin
password: admin

#### Networking

The VM basically creates a virtual private LAN IP pointing into 192.168.33.60


#### Logging in as root

you can either use sudo or "sudo -i" to execute commands as root

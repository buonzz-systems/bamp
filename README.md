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


Add the following line in your local hosts  file

```
192.168.33.60 bamp.dev
```

Open http://bamp.dev on your browser. <br/>

On the screen, copy-paste your Public SSH key. In Mac, you can get your ssh key by:

```
cat ~/.ssh/id_rsa.pub
```

In the hostname configuration, set it to *bamp.dev* <br/>

Then make sure the "Use virtualhost naming for apps" checkbox is checked.

#### Install the Toolbelt

the toolbelt is basically the client you can use to execute remote commands to the server

```
npm install -g dokku-toolbelt
```


### Usage

Visit  http://bamp.dev to get started.



#### Networking

The VM basically creates a virtual private LAN IP pointing into 192.168.33.60
 
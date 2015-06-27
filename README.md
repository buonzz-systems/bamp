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




### Installers

The repo comes with add-on utilities to install additional softwares you might need aside from the basic LAMP stack. This allows you to easily add softwares "as-needed" instead of packing tons of things in the same basebox. This process allows you to progressively enchance your toolset and efficiently use the CPU/Memory/Disk usage of your computer.

* Redis
* Oracle Java
* Apache Tomcat 8
* Ruby
* NodeJS


See the following easy to use installer commands. For each of the commands below, you need to 

```
vagrant ssh
```
first, so you can execute it inside the VM itself (not in your actual computer)



#### Install Redis

```
setup_redis
```

#### Install Oracle Java

```
setup_oracle_java
```

#### Install Tomcat

Note: Be sure to install Java first before executing the tomcat installer


```
setup_tomcat
```

Visit 

http://bamp.dev:8080/manager/html

to manage the applications. 

Admin access are:

username: admin

password: admin


#### Install Ruby

```
setup_ruby
```

#### Install NodeJS

```
setup_nodejs
```

the script will install NVM first then install NodeJS.

#### Install Jekyll

```
setup_jekyll
```

Make sure you install Ruby and NodeJS first before attempting to install jekyll


#### Install Front-End Tools

Front-end tools are collection of tools for managing JavaScript and CSS Assets.

* Bower
* GruntJS
* Yeoman
* SASS
* CofeeScript

```
setup_frontend_tools
```

Make sure you install  NodeJS and Ruby first before attempting to install the front-end tools





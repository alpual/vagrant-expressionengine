Vagrant for Expression Engine
========================

A Vagrantfile and install shell script for use on Expression Engine installations.

## Setup
Name your database in `vagrant-database.sh`
Run `vagrant up`

## Database settings

### Expression Engine database config settings
Found in `/system/expressionengine/config/database.php`

```
$db['expressionengine']['hostname'] = 'localhost';
$db['expressionengine']['username'] = 'root';
$db['expressionengine']['password'] = 'root';
$db['expressionengine']['database'] = 'ee_my_client_database';
```

### Connecting to database from outside of Vagrant (ie using MYSQL Workbench)

```
TCP/IP over SSH connection
127.0.0.1:2222
SSH Username: vagrant
SSH Password: vagrant
MYSQL Username: root
MYSQL Password: root
```

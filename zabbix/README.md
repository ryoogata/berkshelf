zabbix berkshelf
================
zabbix server を構築する berkshelf

利用する Database は下記のいずれかを利用できる。

- MySQL
- PostreSQL


Requirements
------------

#### mandatory cookbooks ( DB に MySQL を利用する場合)
必須 cookbook は下記の通り

- zabbix
- zabbix-custom
	- git: 'https://github.com/ryoogata/zabbix-custom.git'
- mysql
	- バージョンを `5.6.1` に指定
- mysql-custom
	- git: 'https://github.com/ryoogata/mysql-custom.git'
- yum-epel
- yum
- apache2 
	- バージョンを `1.10.4` に指定
- database'
	- バージョンを `2.3.1` に指定


#### mandatory cookbooks ( DB に PostgreSQL を利用する場合)
必須 cookbook は下記の通り

- zabbix
- zabbix-custom
	- git: 'https://github.com/ryoogata/zabbix-custom.git'
- postgresql
- yum-epel
- yum
- apache2 
	- バージョンを `1.10.4` に指定
- database'
	- バージョンを `2.3.1` に指定


Attributes
----------

### MySQL の場合

#### zabbix

Key|Type|Description|Default
---|---|---|---
['zabbix']['server']['version']||バージョンの指定|2.2.7
['zabbix']['server']['configure_options']||コンパイル時のオプション|['--with-libcurl', '--with-net-snmp']
['zabbix']['agent']['servers']||zabbix server の指定|localhost
['zabbix']['agent']['version']||バージョンの指定|2.2.7
['zabbix']['web']['fqdn']|||localhost

#### mysql

Key|Type|Description|Default
---|---|---|---
['mysql']['server_root_password']|||nil


### PostgreSQL の場合

#### zabbix

Key|Type|Description|Default
---|---|---|---
['zabbix']['database']['install_method']||database の種類を指定|postgres
['zabbix']['server']['version']||バージョンの指定|2.4.3
['zabbix']['server']['configure_options']||コンパイル時のオプション|['--with-libcurl', '--with-net-snmp']
['zabbix']['agent']['servers']||zabbix server の指定|localhost
['zabbix']['agent']['version']||バージョンの指定|2.4.3
['zabbix']['web']['fqdn']|||localhost

#### postgresql

Key|Type|Description|Default
---|---|---|---
['postgresql']['password']['postgres']|||nil


run_list
----

### MySQL の場合

#### 1. ( mandatory ) recipe[yum-epel]


#### 2. ( mandatory ) recipe[apache2::default]


#### 3. ( mandatory ) recipe[mysql::server]


#### 4. ( mandatory ) recipe[mysql::client]


#### 5. ( mandatory ) recipe[mysql-custom::default]


#### 6. ( mandatory ) recipe[zabbix]


#### 7. ( mandatory ) recipe[zabbix::database]


#### 8. ( mandatory ) recipe[zabbix::server]


#### 9. ( mandatory ) recipe[zabbix::web]


#### 10. recipe[zabbix-custom::japanese_font]



### PostgreSQL の場合

#### 1. ( mandatory ) recipe[yum-epel]

#### 2. ( mandatory ) recipe[apache2::default]

#### 3. ( mandatory ) recipe[postgresql::server]

#### 4. ( mandatory ) recipe[postgresql::client]

#### 5. ( mandatory ) recipe[zabbix]

#### 6. ( mandatory ) recipe[zabbix::database]

#### 7. ( mandatory ) recipe[zabbix::server]

#### 8. ( mandatory ) recipe[zabbix::web]

#### 9. recipe[zabbix-custom::japanese_font]



License and Authors
-------------------
* Author:: Ryo Ogata ryo.ogata@gmail.com
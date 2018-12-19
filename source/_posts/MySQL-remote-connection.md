---
title: MySQL remote connection
date: 2018-12-19 12:22:16
tags:
  - MySQL
categories: MySQL
---

## 开启远程访问权限

登录mysql
```bash
mysql -u root -p
```

<!-- more -->

执行sql语句
```sql
use mysql;
-- %为所有ip都可以远程访问
update user set host = '%' where user = 'root';  
-- 查看修改
select host, user from user;

FLUSH PRIVILEGES;
```

Check status:
```bash
netstat -tulpen
```

Modify mysql configuration:

```bash
vi /etc/mysql/mysql.conf.d/mysqld.cnf

# Edit:
bind-address = 0.0.0.0
```

Restart mysql

```bash
sudo service mysql restart
```

## 远程访问mysql

```bash
mysql -h <host> -P 3306 -u root -p
```
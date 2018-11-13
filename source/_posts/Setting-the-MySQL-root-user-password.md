---
title: Setting the MySQL root user password
date: 2018-11-13 17:31:03
tags:
  - MySQL
  - macOS
  - Linux
categories: MySQL
---

If you don't remember the password you set for root and need to reset it, follow these steps:

Stop the mysqld server, this varies per install

Run the server in safe mode with privilege bypass

<!-- more -->

```bash
sudo mysqld_safe --skip-grant-tables
```

In a new window connect to the database, set a new password and flush the permissions & quit:

```bash
mysql -u root
```

```mysql
#For MySQL older than MySQL 5.7 use:

UPDATE mysql.user SET Password=PASSWORD('your-password') WHERE User='root';

#For MySQL 5.7+ use:

UPDATE mysql.user SET authentication_string=PASSWORD("your-password") WHERE User='root';

#Refresh and quit:

FLUSH PRIVILEGES;

\q
```
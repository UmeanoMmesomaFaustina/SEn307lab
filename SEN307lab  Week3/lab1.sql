
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.021 sec)

mysql> CREATE DATABASE sen307_11455;
Query OK, 1 row affected (0.243 sec)

mysql> USE sen307_11455;
Database changed
mysql> SELECT DATABASE() ;
+--------------+
| DATABASE()   |
+--------------+
| sen307_11455 |
+--------------+
1 row in set (0.005 sec)

mysql> SHOW DATABASES ;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sen307_11455       |
| sys                |
+--------------------+
5 rows in set (0.014 sec)

mysql> SELECT VERSION() ;
+-----------+
| VERSION() |
+-----------+
| 26.7.0    |
+-----------+
1 row in set (0.010 sec)

mysql> SELECT CURRENT_USER() ;
+----------------+
| CURRENT_USER() |
+----------------+
| root@localhost |
+----------------+
1 row in set (0.007 sec)

mysql> SELECT NOW() ;
+---------------------+
| NOW()               |
+---------------------+
| 2026-10-19 22:17:08 |
+---------------------+
1 row in set (0.006 sec)

mysql> STATUS ;
--------------
mysql  Ver 26.7.0 for Win64 on x86_64 (MySQL Community Server - GPL)

Connection id:          26
Current database:       sen307_11455
Current user:           root@localhost
SSL:                    Cipher in use is TLS_AES_128_GCM_SHA256
Using delimiter:        ;
Server version:         26.7.0 MySQL Community Server - GPL
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    utf8mb4
Db     characterset:    utf8mb4
Client characterset:    cp850
Conn.  characterset:    cp850
TCP port:               3306
Binary data as:         Hexadecimal
Uptime:                 1 hour 56 min 1 sec

Threads: 7  Questions: 262  Slow queries: 0  Opens: 331  Flush tables: 3  Open tables: 247  Queries per second avg: 0.037
--------------

mysql> SHOW VARIABLES LIKE 'port' ;
+---------------+-------+
| Variable_name | Value |
+---------------+-------+
| port          | 3306  |
+---------------+-------+
1 row in set (0.043 sec)

mysql> SHOW TABLES ;
Empty set (0.029 sec)

mysql> ^D^C
mysql>
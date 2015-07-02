#!/bin/bash

# cd /etc/cron.daily/
# touch /etc/cron.daily/dbbackup-daily.sh
# chmod 755 /etc/cron.daily/dbbackup-daily.sh
# vi /etc/cron.daily/dbbackup-daily.sh

# Add your backup dir location, password, mysql location and mysqldump location
DATE=$(%d-%m-%Y)
BACKUP_DIR="/var/www/back"
MYSQL_USER="root"
MYSQL_PASSWORD=""
MYSQL='/usr/bin/mysql'
MYSQLDUMP='/usr/bin/mysqldump'
DB='demo'

mysqldump --user=mydbuser --password=mypass --default-character-set=utf8
          --single-transaction $DB > $BACKUP_DIR/$DATE.gz

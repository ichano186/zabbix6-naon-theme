#!/bin/bash
ZABBIX_DIR="/usr/share/zabbix"
PGDBNAME="zabbix"
PGPASSWORD="zabbix"
cp naon-theme.css $ZABBIX_DIR/assets/styles/
cp $ZABBIX_DIR/include/classes/core/APP.php  $ZABBIX_DIR/include/classes/core/APP.php-bak
cp APP.php $ZABBIX_DIR/include/classes/core/
cat graph_color_insert.sql | sudo -u zabbix PGPASSWORD=$PGPASSWORD psql $PGDBNAME

#!/bin/bash
mysql -u root -e "SET PASSWORD FOR 'root'@'%' = PASSWORD('$1');"

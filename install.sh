#!/bin/bash
if [ -f /mnt ];
then
cp -r data /mnt/mysqlharundata
chown mysql:mysql -R /mnt/mysqlharundata
helm install mysqlharun mysqlhelm/
helm install harunaktasdocs docshelm/
else
mkdir /mnt
cp -r data /mnt/mysqlharundata
chown mysql:mysql -R /mnt/mysqlharundata
helm install mysqlharun mysqlhelm/
helm install harunaktasdocs docshelm/
fi

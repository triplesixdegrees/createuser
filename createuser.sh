#!/bin/bash
userfile=userlist 
username=$(cat userlist | tr 'A-Z'  'a-z')
password=$username@123
for user in $username
do
       useradd $user
       echo $password | passwd --stdin $user
done
echo "$(wc -l userlist) users have been created" 
tail -n$(wc -l userlist) /etc/passwd

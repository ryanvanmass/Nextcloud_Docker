#!/bin/bash
# Set Admin User up
echo "Username:"
read username

echo "Password:"
read password

docker exec --user www-data nextcloud php occ maintenance:install --admin-user $username --admin-pass $password

docker exec --user www-data nextcloud php occ config:system:set trusted_domains 0 --value=*.*.*.*

# Disable Local Server Integration Restriction
docker exec --user www-data nextcloud php occ config:system:set allow_local_remote_servers --value true --type bool

# Install OnlyOffice Integration



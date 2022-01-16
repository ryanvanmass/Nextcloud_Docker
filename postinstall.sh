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


# Install PHP SMB Client
docker exec --user root nextcloud apt update
docker exec --user root nextcloud apt install smbclient -y


# Install Apps
docker exec --user www-data nextcloud php occ app:install onlyoffice

docker exec --user www-data nextcloud php occ app:install side_menu #Drop Down for Apps

docker exec --user www-data nextcloud php occ app:install tasks

docker exec --user www-data nextcloud php occ app:install mail

docker exec --user www-data nextcloud php occ app:install calendar

docker exec --user www-data nextcloud php occ app:install drawio

docker exec --user www-data nextcloud php occ app:install external #External Sites


# Enabling Apps
docker exec --user www-data nextcloud php occ app:enable files_external


# Disable Apps
docker exec --user www-data nextcloud php occ app:disable federation

docker exec --user www-data nextcloud php occ app:disable federatedfilesharing

docker exec --user www-data nextcloud php occ app:disable dashboard

docker exec --user www-data nextcloud php occ app:disable firstrunwizard

docker exec --user www-data nextcloud php occ app:disable weather_status


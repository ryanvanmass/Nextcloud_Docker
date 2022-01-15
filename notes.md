# Notes
* Create a `/Nextcloud` Directory
* Base compose file https://github.com/christophetd/nextcloud-docker-compose/blob/master/docker-compose.yml
* Host violates local access rules - Onlyoffice Doc server Nextcloud Error
  * `docker exec --user www-data nextcloud php occ config:system:set allow_local_remote_servers --value true --type bool`
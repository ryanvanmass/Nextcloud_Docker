# Self Hosted Google Workspace
This Self Hosted instance of Nextcloud is configured to be near feature parity with Google Workspaces utilizing all open source software

# Installation
## Basic Install and Setup
1. Install Docker
2. Clone Repo
```
    git clone https://github.com/ryanvanmass/nextcloud_docker
```
3. Run Docker Compose File
```
    docker-compose up
```
4. Run Configuration Script
```
    sh postinstall.sh
```

## Additioanl Configuration
### Configuring Onlyoffice
Navigate to `Settings > Nextcloud` and enter the following for the URL `<IP/URL of Server>:85`

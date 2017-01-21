# expressServer
_A Webserver in Express & Angular on Node & Alpine inside Docker_  
**by Collective Acuity**  

## Components
- Alpine Edge (OS)
- NodeJS 4.2.6 LTS (Environment)
- Express 3.21.2 (Server)

## Dev Env
- Docker (Provisioning)
- Bitbucket (Version Control)
- LocalTunnel (Secure Tunnel)
- PyCharm (IDE)
- Google Drive(Sync, Backup)

## Languages
- Javascript
- Markdown
- Shell Script

## Features
- Express in a Container
- Local Credential Controls
- Lean Footprint
- Tunnel Ready for Testing
- EC2 Ready for Deployment

## Setup DevEnv
- Install Docker Toolbox on Local Device
- Install Git on Local Device
- Clone/Fork Repository from Version Control service
- Create a /cred Folder in Root to Store Tokens
- _[Optional]_ Create a New Private Remote Repository

## Launch Commands
**startServer.sh**  
_Creates container with required volumes and starts app on a node server_  
Requires:  

- Container Alias
- Container Port
- Mapped Volumes
- Initial Command
- Container Root Folder Name (if AWS EC2 deployment with awsDocker module)
- Virtualbox Name (if Windows or Mac localhost)

**rebuildDocker.sh**  
_Initiates an automated build command on Docker to update base image_  
Requires:  

- Docker Image Name
- Token from Docker Build Settings
- Environment Variable File (in cred/)

**tunnelMe.sh**  
_Initiates a secure tunnel from local device to endpoint on localtunnel.me_  
Requires:  

- Container Alias

## Collaboration Notes
_The Git and Docker repos contain all the configuration for deployment to AWS.  
Google Drive or Dropbox can be used to synchronize files across multiple devices.  
Use AWS IAM to assign user permissions and create keys for each collaborator.  
Collaborators are required to install dependencies on their local device.  
Repo should be **FORKED** by collaborators so reality is controlled by one admin.   
New dependencies should be added to the Dockerfile, **NOT** to the repo files.  
Collaborators should test changes to Dockerfile locally before merging to remote:_  

```
docker build -t test-image .
```

_.gitignore and .dockerignore have already been installed in key locations.  
To prevent unintended file proliferation through version control & provisioning,  
add/edit .gitignore and .dockerignore to include all new:_  

1. local environments folders
2. localhost dependencies
3. configuration files with credentials and local variables

## Sails Documentation
- http://sailsjs.org/documentation/concepts/
- https://github.com/balderdashy/sails

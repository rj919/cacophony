# Cacophony
_An Acoustic Controller_  
**by Make Magic Happen**  

## Links to Resources
https://www.one-tab.com/page/Xwi9FxLFR06vrTl1LzlFjQ

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

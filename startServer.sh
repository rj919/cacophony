# Set Docker Variables
VIRTUALBOX_NAME=default
APP_CONTAINER_ALIAS=express
APP_DOCKER_IMAGE=collectiveacuity/expressserver
APP_RUN_COMMAND="node server.js"
APP_ROOT_DIRECTORY=expressserver
APP_START_FILE=/server/server.js
APP_EXTERNAL_PORT=5004

# Determine System OS
if [ -z "${OS}" ]
then
  OS="`uname -a`"
fi
case ${OS} in
  *"Linux"*) OS="Linux" ;;
  *"FreeBSD"*) OS="FreeBSD" ;;
  *"Windows"*) OS="Windows" ;;
  *"Darwin"*) OS="Mac" ;;
  *"SunOS"*) OS="Solaris" ;;
esac

# Set System Local Host IP
case ${OS} in
  "Windows") SYSTEM_LOCAL_HOST=`docker-machine ip $VIRTUALBOX_NAME`  ;;
  "Mac") SYSTEM_LOCAL_HOST=`docker-machine ip $VIRTUALBOX_NAME` ;;
  *) SYSTEM_LOCAL_HOST=`hostname --ip-address` ;;
esac

# Set Path to Volumes
case ${OS} in
  "Windows") CONTAINER_VOLUME_PATH=/$(pwd) ;;
  *) CONTAINER_VOLUME_PATH=$(pwd) ;;
esac

# Launch Container with Volumes
docker run --name $APP_CONTAINER_ALIAS \
-e SYSTEM_LOCAL_HOST=$SYSTEM_LOCAL_HOST \
-v "$CONTAINER_VOLUME_PATH""$APP_START_FILE":"$APP_START_FILE" \
-i -d -p $APP_EXTERNAL_PORT:8080 $APP_DOCKER_IMAGE $APP_RUN_COMMAND


# Instruction to pipe container stdouts to terminal
# echo To stream log: docker logs -f $APP_CONTAINER_ALIAS

# Instructions to open up a terminal inside processor
# docker exec -it $APP_CONTAINER_ALIAS sh

# Location to View on Browser
echo To view on localhost: open up browser to $SYSTEM_LOCAL_HOST:$APP_EXTERNAL_PORT

# Reminder to End Server Container
echo To stop server: docker rm -f $APP_CONTAINER_ALIAS

#!/bin/sh

# Create a user and group that matches the host, either using ID's provided or
# collected from the '/workspace' directory
export HOST_USER_ID=${HOST_USER_ID:-`stat -c %u /workspace`}
export HOST_GROUP_ID=${HOST_GROUP_ID:-`stat -c %g /workspace`}

groupadd -g $HOST_GROUP_ID group
useradd -u $HOST_USER_ID -g group me

# This is to ensure all the files that we copy into the container are owned
# with the right permissions
chown -R me: /home/me

export PROJECT_NAME=${PROJECT_NAME:-"Standalone"}
exec /sbin/su-exec me tmux -u -2 new -s ${PROJECT_NAME}

#!/bin/sh

# Add local user
# Either use the LOCAL_USER_ID if passed in at runtime or fallback
USER_ID=${LOCAL_USER_ID:-9001}
echo "Starting with UID : $USER_ID"
adduser -s /bin/sh -u $USER_ID -D docker
export HOME=/home/docker

su-exec docker:1000 "$@"
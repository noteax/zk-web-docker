#!/bin/bash

set -e

# Generate the config only if it doesn't exist
mkdir -p conf
if [ ! -f "conf/zk-web-conf.clj" ]; then
    CONFIG="conf/zk-web-conf.clj"

    printf "{ \n" >> $CONFIG
    printf ":server-port $ZKWEB_PORT \n" >> $CONFIG
    printf ":users {`echo $ZKWEB_CREDENTIALS | tr : ' ' | sed 's/[^ ][^ ]*/"&"/g'`} \n" >> $CONFIG
    printf ":default-node \"$ZKWEB_DEFAULT_NODE\" \n" >> $CONFIG
    printf "}" >> $CONFIG

fi

exec "$@"
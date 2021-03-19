#!/usr/bin/env sh
echo "$MONGODB_CRON_PATTERN /usr/local/bin/mongodump.sh" >> /etc/crontabs/root 
chmod a+x /usr/local/bin/*
crond -f 

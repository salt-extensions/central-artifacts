#!/bin/sh

args=

echo "In entrypoint"

if [ -n "$IGNORE_SCHEDULE" ]; then
    echo "Ignoring schedule"
    args="--schedule="
else
    echo "Using schedule"
fi

runuser -u ubuntu -- renovate $args

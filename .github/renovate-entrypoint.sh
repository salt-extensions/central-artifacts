#!/bin/sh

args=

if [ -n "$IGNORE_SCHEDULE" ]; then
    args="--schedule="
fi

runuser -u ubuntu renovate $args

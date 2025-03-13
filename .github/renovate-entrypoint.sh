#!/bin/sh

args=

if [ -n "$IGNORE_SCHEDULE" ]; then
    echo "Ignoring schedule"
    args="--schedule="
fi

exec renovate $args

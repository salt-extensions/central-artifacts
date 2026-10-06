#!/bin/sh

args=

echo "In entrypoint"

if [ -n "$IGNORE_SCHEDULE" ]; then
    echo "Ignoring schedule"
    args="--schedule="
else
    echo "Using schedule"
fi

# We allow custom venv_pyver and Copier migrations need access to that specific Python version.
# Ensure `uv` is installed, which solves this issue.
# TODO: Consider detecting a Renovate run in the template automation and installing `uv` on demand.

# required for `uv` install below
# renovate: prebuilt
install-tool python 3.14.8

# renovate:
install-tool uv 0.12.23

runuser -u ubuntu -- renovate $args

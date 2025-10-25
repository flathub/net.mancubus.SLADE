#!/usr/bin/env bash
set -euf -o pipefail

CFG_FILE=~/.slade3/slade3.cfg

if [ ! -f "$CFG_FILE" ]; then
    install -Dm0644 /app/bin/slade3.cfg $CFG_FILE
fi

exec /app/bin/slade "$@"

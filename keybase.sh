#!/bin/bash

# Keybase always downloads to "~/Downloads"; make that a symlink to the XDG dir.
KEYBASE_DOWNLOADS=~/Downloads
if ! test -d "$KEYBASE_DOWNLOADS"; then
    echo "Creating symlink from $KEYBASE_DOWNLOADS to $(xdg-user-dir DOWNLOAD)"
    ln -s "$(xdg-user-dir DOWNLOAD)" "$KEYBASE_DOWNLOADS"
fi

# Start background daemon
/app/keybase/bin/keybase service &

# Start application
export TMPDIR="${XDG_RUNTIME_DIR}/app/${FLATPAK_ID}"
exec zypak-wrapper /app/keybase/Keybase "$@"

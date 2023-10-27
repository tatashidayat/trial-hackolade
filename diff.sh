#!/usr/bin/env bash

set -e

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
APP="/Applications/Hackolade.app/Contents/MacOS/Hackolade"

DELTA_FILE="$SCRIPT_DIR/delta.json"

rm -rf $DELTA_FILE || true

$APP compMod --model1 "$SCRIPT_DIR/mongo/pockets_db.hck.json" --model2 "$SCRIPT_DIR/mongo/pockets2_db.hck.json" --deltaModel "$DELTA_FILE"

#!/bin/bash
ROOT=$(pwd)
OUT="$ROOT/$1"
GENDIR=$2

# Position the terminal into the frontend directory
cd "powerspikegg/frontend"

# Make a folder to cache npm fetching
# export APPDATA="$ROOT/$GENDIR/.appdata"

# Install dependencies
npm install || exit 1

# Output a file for bazel check
# TODO: Replace that with a link to the ng binary (might be complicated)
echo "done" > "$OUT/installed.txt"

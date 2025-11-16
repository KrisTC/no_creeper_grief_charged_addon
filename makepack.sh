#!/usr/bin/env bash
set -e

# Build script for the no_creeper_grief_charged_addon datapack
# Run this script from inside the datapack folder.

PACK_NAME="no_creeper_grief_charged_addon"
OUTPUT="../${PACK_NAME}.zip"

echo "Building datapack: ${PACK_NAME}"
echo "Output: ${OUTPUT}"

# Remove old zip if it exists
if [ -f "${OUTPUT}" ]; then
    rm "${OUTPUT}"
fi

# Zip the *contents* of this folder (.) but exclude:
# - the build script itself
# - .git folder if present
# - macOS crap
zip -r "${OUTPUT}" . \
    -x "*.DS_Store" \
    -x "*.sh" \
    -x "README.md" \
    -x ".git/*"

echo "Done. Created ${OUTPUT}"
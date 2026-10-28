#!/bin/bash
set -e

echo "Building Ghostty (ReleaseFast)..."
zig build -Doptimize=ReleaseFast

echo "Removing existing Ghostty.app from /Applications..."
rm -rf /Applications/Ghostty.app

echo "Copying Ghostty.app to /Applications..."
cp -R macos/build/ReleaseLocal/Ghostty.app /Applications/

echo "Done! Ghostty installed to /Applications/Ghostty.app"

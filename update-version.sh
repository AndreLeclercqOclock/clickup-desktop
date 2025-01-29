#!/bin/bash

# Get latest version from API
echo "Extracting ClickUp version..."
response=$(curl -s -L -D - \
    -m 5 \
    --max-filesize 1M \
    --range 0-1024 \
    "https://desktop.clickup.com/linux" \
    -o /dev/null)

# Extract version from headers
if [[ $response =~ filename=\"desktop-([0-9]+\.[0-9]+\.[0-9]+) ]]; then
    new_version="${BASH_REMATCH[1]}"
    echo "✅ New version found: $new_version"
    
    # Update PKGBUILD
    sed -i "s/^pkgver=.*$/pkgver=$new_version/" PKGBUILD
    echo "✅ PKGBUILD updated to version $new_version"

    # Git operations
    git add PKGBUILD
    git commit -m "feat: update to version $new_version"
    echo "✅ Changes committed to git"
else
    echo "❌ Unable to extract version"
    echo "Headers analysis:"
    echo "$response" | grep -i -E "content-|disposition|filename"
    exit 1
fi

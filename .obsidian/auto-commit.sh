#!/bin/bash
cd /root/Obsidian-Vault

# Check if there are changes
if ! git diff-index --quiet HEAD --; then
    git add .
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
    git commit -m "Auto-commit: $TIMESTAMP" && git push
    echo "[$TIMESTAMP] Changes committed and pushed to GitHub"
else
    echo "No changes to commit"
fi

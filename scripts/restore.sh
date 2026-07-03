#!/bin/bash
# Restore world from latest backup
BACKUP_DIR="/opt/minecraft/backups"
WORLD_DIR="/opt/minecraft/world"

LATEST=$(ls -t $BACKUP_DIR/*.tar.gz | head -1)
if [ -z "$LATEST" ]; then
    echo "No backups found."
    exit 1
fi

echo "Restoring from $LATEST..."
rm -rf $WORLD_DIR
tar -xzf $LATEST -C /opt/minecraft/
echo "Restore complete. Start the server."

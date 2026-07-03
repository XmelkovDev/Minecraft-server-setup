#!/bin/bash
# Backup script for Minecraft server
BACKUP_DIR="/opt/minecraft/backups"
WORLD_DIR="/opt/minecraft/world"
mkdir -p $BACKUP_DIR
DATE=$(date +%Y-%m-%d_%H-%M)
tar -czf $BACKUP_DIR/backup_$DATE.tar.gz $WORLD_DIR
# Keep only last 7 backups
ls -t $BACKUP_DIR/*.tar.gz | tail -n +8 | xargs rm -f
echo "Backup created: backup_$DATE.tar.gz"

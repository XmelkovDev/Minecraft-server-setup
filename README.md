# Minecraft Server Auto-Setup Tool

Open Source project: Automated deployment system for Minecraft Paper servers on Linux VPS.

## What I'm developing
This is my open-source project that automates the entire process of setting up a Minecraft server from scratch. Instead of manually installing Java, downloading server files, and configuring properties, my script does everything in one command.

## Features
- One-command installation via scripts/install.sh
- Automatic backups via scripts/backup.sh
- Restore from backup via scripts/restore.sh
- Plugin updates via scripts/update-plugins.sh
- Server status check via scripts/status.sh
- Pre-configured server.properties
- Plugin management structure

## Requirements
- Linux VPS (Ubuntu/Debian)
- Java 21+
- wget, tar

## Installation
1. Clone this repo:
   `bash
   git clone https://github.com/XmekovDev/Minecraft-server-setup.git

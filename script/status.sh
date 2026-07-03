#!/bin/bash
# Check if Minecraft server is running
if pgrep -f "java.*server.jar"; then
    echo "Minecraft server is running."
else
    echo "Minecraft server is NOT running."
fi

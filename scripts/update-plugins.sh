#!/bin/bash
# Update plugins from a list of URLs
PLUGIN_DIR="/opt/minecraft/plugins"
mkdir -p $PLUGIN_DIR
cd $PLUGIN_DIR

# Example: download EssentialsX
wget -O EssentialsX.jar https://ci.ender.zone/job/EssentialsX/lastSuccessfulBuild/artifact/EssentialsX-2.20.1.jar

# Add more plugins here
echo "Plugins updated. Restart the server to apply changes."

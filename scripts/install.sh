#!/bin/bash
# Minecraft Server Installer (Paper 1.21)
set -e

SERVER_DIR="/opt/minecraft"
mkdir -p $SERVER_DIR
cd $SERVER_DIR

echo "Downloading Paper 1.21..."
wget -O server.jar https://api.papermc.io/v2/projects/paper/versions/1.21/builds/106/downloads/paper-1.21-106.jar

echo "Creating eula.txt..."
echo "eula=true" > eula.txt

echo "Creating start script..."
cat > start.sh << 'EOF'
#!/bin/bash
cd /opt/minecraft
java -Xmx2G -Xms1G -jar server.jar nogui
EOF
chmod +x start.sh

echo "Creating plugins directory..."
mkdir -p plugins

echo "Installation complete. Run /opt/minecraft/start.sh to start the server."

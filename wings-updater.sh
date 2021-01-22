echo "Running updater script for Pterodactyl wings..."
cd /usr/local/bin
curl -L -o /usr/local/bin/wings https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_amd64
chmod u+x /usr/local/bin/wings
systemctl restart wings
echo "Wings sucessfully updated and is rebooting now."

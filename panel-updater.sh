echo "Running the Pterodactl panel updater script..."
cd /var/www/pterodactyl
php artisan p:upgrade
echo "Panel has been updated successfully. Goodbye."

echo "Running the Pterodactl panel updater script..."
cd /var/www/pterodactyl
echo "Temporarily taking down the panel for end users to avoid potential issues."
php artisan down
curl -L https://github.com/pterodactyl/panel/releases/latest/download/panel.tar.gz | tar -xzv
chmod -R 755 storage/* bootstrap/cache
composer install --no-dev --optimize-autoloader
php artisan view:clear
php artisan config:clear
php artisan migrate --seed --force
chown -R www-data:www-data *
echo "Restarting queue workers..."
php artisan queue:restart
echo "Bringing the panel back online..."
php artisan up
echo "Panel has been updated successfully. Goodbye."

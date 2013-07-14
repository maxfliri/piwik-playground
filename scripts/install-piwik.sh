
echo "Downloading Piwik..."
wget -q http://builds.piwik.org/latest.zip

echo "Installing Piwik..."
unzip -o -q -d /usr/share/nginx/www latest.zip
chown -R www-data:www-data /usr/share/nginx/www/piwik
rm -f "/usr/share/nginx/www/How to install Piwik.html"
rm -f latest.zip

echo "Removing Files and Folders"
rm -rf pub/static/* var/* generated/code/*
echo "Upgrading"
/usr/bin/php7.0 bin/magento setup:upgrade
echo "Clean Cache"
/usr/bin/php7.0 bin/magento c:c
echo "Clean Flush"
/usr/bin/php7.0 bin/magento c:f
echo "Files and Folder Permission changing"
chmod 777 -R var/ generated/code/ pub/static/
echo "Deploying"
/usr/bin/php7.0 bin/magento setup:static-content:deploy -f
echo "Permission Change..."
chmod 777 -R var/ generated/code/ pub/static/

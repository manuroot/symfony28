#!/bin/bash
php app/console cache:clear --env=prod --no-debug
php app/console assets:install web --env=prod
php app/console assetic:dump --env=prod -v
chown -R www-data:www-data *
chown -R www-data:www-data .git
chown -R www-data:www-data .gitignore
chmod g+rwx *
chmod -R g+rwx .git
chmod g+rwx .gitignore

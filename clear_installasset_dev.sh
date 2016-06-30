#!/bin/bash
php app/console cache:clear --env=dev --no-debug
php app/console assets:install web --env=dev
php app/console assetic:dump --env=dev
chown -R www-data:www-data *
chown -R www-data:www-data .git
chown -R www-data:www-data .gitignore
chmod -R g+rwx *
chmod -R g+rwx .git
chmod g+rwx .gitignore


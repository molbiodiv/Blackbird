#!/bin/bash

# Script to quickly install all required components
# Depends on coffee-script, composer, bower

bower install
composer install
coffee -o scripts -c src
cp vendor/iimog/biom-conversion-server/convert.php .

#!/bin/bash
if [-f"composer.json"]; then composer install --no-dev --optimize-autoloader
fi
chmod +x build.sh

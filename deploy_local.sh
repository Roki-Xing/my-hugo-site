#!/usr/bin/env bash
set -euo pipefail
hugo --minify
sudo rsync -a --delete ./public/ /var/www/my-hugo-site/public/
sudo service nginx reload || true
echo "Deployed to /var/www/my-hugo-site/public at $(date)"

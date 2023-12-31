#!/bin/bash -eux
source "$(dirname $0)/bin/conf"

[ "$USER" = "root" ] # USER MUST BE ROOT

### PULL DATA ###
rm -rf "${contentsdir:?}"
cd "$wwwdir"
git clone "https://github.com/$contents_owner/$contents"
chown www-data:www-data "$contentsdir" -R

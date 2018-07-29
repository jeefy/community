#!/bin/bash

KCOMMUNITY_ROOT="$( cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd -P)"
KCOMMUNITY_SITE_ROOT="$KCOMMUNITY_ROOT/_tmp/kcommunity-site"
KCOMMUNITY_SITE_REPO="${KCOMMUNITY_SITE_REPO:-"https://github.com/mrbobbytables/kcommunity-site.git"}"
HUGO_BUILD=true
export KCOMMUNITY_ROOT
export HUGO_BUILD

mkdir -p "$KCOMMUNITY_ROOT/_tmp/public"
git clone "$KCOMMUNITY_SITE_REPO" "$KCOMMUNITY_SITE_ROOT" --recurse-submodules
exec "$KCOMMUNITY_SITE_ROOT/gen-site.sh" "$@"
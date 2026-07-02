#!/bin/bash
# פריסת מחשבון חדר הלידה ל-Cloudflare Pages (obstetric-calc.pages.dev)
# שימוש: ./deploy-cloudflare.sh   (או דרך Claude Code)
set -e
cd "$(dirname "$0")"
STAGE="$(mktemp -d)"
cp index.html _headers "$STAGE"/
cp -R assets "$STAGE"/assets
echo "פורס $(find "$STAGE" -type f | wc -l | tr -d ' ') קבצים ל-obstetric-calc…"
npx --yes wrangler@latest pages deploy "$STAGE" \
  --project-name obstetric-calc --branch main --commit-dirty=true
rm -rf "$STAGE"
echo "✓ חי: https://obstetric-calc.pages.dev"

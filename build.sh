#!/bin/sh
# Builds the installable app into docs/ (src/app.html is also the claude.ai preview page).
cd "$(dirname "$0")"
mkdir -p docs
cat src/head.html src/app.html > docs/index.html
printf '\n</html>\n' >> docs/index.html
cp src/manifest.webmanifest src/sw.js src/icon.svg docs/

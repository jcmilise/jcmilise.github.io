#!/usr/bin/env bash
# Build all three languages in the correct order.
# EN renders to _site/ ; CA and ES to _site/ca and _site/es (append, no clean).
set -e
quarto render --profile en
quarto render --profile ca --no-clean
quarto render --profile es --no-clean
echo "Done. Open _site/index.html"

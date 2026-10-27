#!/bin/sh
# Builds index.html (the GitHub Pages site) from doorman.html (the Claude artifact source).
# Claude adds the document wrapper itself when publishing, so only index.html carries it.
set -e
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n<style>body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n</head>\n<body>\n'
  cat doorman.html
  printf '\n</body>\n</html>\n'
} > index.html

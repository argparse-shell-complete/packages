#!/bin/bash

set -e

[[ -e /etc/fedora-release ]] || {
  echo "Not on fedora"
  exit 1
}

[[ -e argparse-shell-complete ]] || \
  git clone https://github.com/argparse-shell-complete/argparse-shell-complete

cd argparse-shell-complete
fpm -s python -t rpm setup.py
mv *.rpm ..

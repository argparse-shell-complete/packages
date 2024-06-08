#!/bin/bash

set -e

[[ -e argparse-shell-complete ]] || \
  git clone https://github.com/argparse-shell-complete/argparse-shell-complete

cd argparse-shell-complete
fpm -s python -t deb setup.py
mv *.deb ..

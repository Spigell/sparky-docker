#!/bin/bash

set -e
cd sparky

if ! test -f /home/sparky/.sparky/projects/db.sqlite3; then
  perl6 db-init.pl6
fi

sparkyd


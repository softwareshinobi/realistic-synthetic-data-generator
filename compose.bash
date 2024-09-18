#!/bin/bash

set -e

set -x

reset

clear

##

echo "##"
echo "## starting..."
echo "##"

##

docker compose build

docker compose down --remove-orphans

docker compose up -d

##

echo "##"
echo "## started..."
echo "##"

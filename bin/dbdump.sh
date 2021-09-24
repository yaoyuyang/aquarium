#!/bin/bash
set -uxo pipefail

if [[ $# -ne 1 ]]; then
    echo "Expected 1 argument: environment"
    exit 2
fi

ENV_DIR=.env_files/$1
USER=`perl -lne '/^DB_USER=(.*)/ && print "$1"' $ENV_DIR/backend`
PASSWORD=`perl -lne '/^DB_PASSWORD=(.*)/ && print "$1"' $ENV_DIR/backend`
DATABASE=`perl -lne '/^DB_NAME=(.*)/ && print "$1"' $ENV_DIR/backend`

DUMP_FILE=${DATABASE}_dump.sql
docker-compose exec db mysqldump -u "$USER" -p"$PASSWORD" $DATABASE | grep -v "mysqldump:" > $DUMP_FILE
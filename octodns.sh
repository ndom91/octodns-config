#!/usr/bin/env bash

set -e

source env.sh
source venv/bin/activate
export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

CONFIG="netbox.yml"
DEBUG=

function usage()
{
   cat << HEREDOC

   Usage: octosync.sh [--validate] [--sync] [--doit]

   optional arguments:
     --debug              enable debug logging
     --config             pass config file name
     -h, --help           show this help message and exit

HEREDOC
}

while [[ $# -gt 0 ]]; do
    key="$1"
    case "$key" in
      --config) CONFIG="$2"; shift ;;
      --debug) DEBUG=1; ;;
      --help) usage; exit 0; ;;
      --doit) octodns-sync ${DEBUG:+--debug} --config "./config/$CONFIG" ;;
      --sync) octodns-sync ${DEBUG:+--debug} --config "./config/$CONFIG" ;;
      --validate) octodns-validate ${DEBUG:+--debug} --config "./config/$CONFIG" ;;
      *) usage; exit 0; ;;
  esac
  shift
done

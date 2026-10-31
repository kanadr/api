#!/bin/sh
# Refresh the specifications from the published documentation.
set -e
mkdir -p openapi
curl -fsS https://docs.kanadr.com/api/openapi.json    -o openapi/openapi.json
curl -fsS https://docs.kanadr.com/api/openapi.en.json -o openapi/openapi.en.json

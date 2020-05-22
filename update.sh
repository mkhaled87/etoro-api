#!/bin/sh

# remeove old api
rm -rf api
mkdir api


# generate the api
openapi-generator generate -i "$OPEN_API_SCRIP" -g ruby -o ./api


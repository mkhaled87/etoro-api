#!/bin/sh

# remeove old api
rm -rf api*


# sources of the api as OpenAPI files
API_DISCOVERY="./specs/Discovery.json"
API_METADATA="./specs/Metadata.json"
API_RATES="./specs/Rates.json"
API_SYSTEM="./specs/System.json"
API_TRADING="./specs/Trading.json"
API_USER="./specs/User.json"


# generate the api
openapi-generator generate -i "$API_DISCOVERY" -g python -o ./api_Discovery
openapi-generator generate -i "$API_METADATA" -g python -o ./api_Metadata
openapi-generator generate -i "$API_RATES" -g python -o ./api_Rates
openapi-generator generate -i "$API_SYSTEM" -g python -o ./api_System
openapi-generator generate -i "$API_TRADING" -g python -o ./api_Trading
openapi-generator generate -i "$API_USER" -g python -o ./api_User

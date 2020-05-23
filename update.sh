#!/bin/sh

# remeove old api
rm -rf api*

# the apis
API_files=( Discovery Metadata Rates System Trading User )
API_spec=./specs


# generate the api
for i in "${API_files[@]}"
do
	swagger-codegen generate -i $API_spec/$i.json -l python -o ./api_$i
done

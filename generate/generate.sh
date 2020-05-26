#!/bin/sh

# the apis
API_files=( Discovery Metadata Rates System Trading User )
API_spec=./specs


# generate the api
for i in "${API_files[@]}"
do
	swagger-codegen generate -i $API_spec/$i.json -l python -o ../python/etoro$i
	swagger-codegen generate -i $API_spec/$i.json -l csharp -o ../csharp/etoro$i
done

#!/bin/sh

# the apis
PKG_URL="https://github.com/mkhaled87/etoro-api/"
PKG_VER=0.6.0
LANGS=( python )
API_files=( discovery metadata rates system trading user )
API_spec=./specs


# generate the api
for j in "${LANGS[@]}"
do
	for i in "${API_files[@]}"
	do
		# Python ?
		if [ "$j" == "python" ]; then
			rm -rf ../$j/etoro-$i/
			swagger-codegen generate -i $API_spec/$i.json -l $j -o ../$j/etoro-$i -DprojectName=etoro-$i,packageName=etoro_$i,packageUrl=$PKG_URL,packageVersion=$PKG_VER > /dev/null
		fi
	done
done

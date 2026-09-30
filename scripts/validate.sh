#!/bin/bash

set -e

for i in {1..5}; do
	code=$(curl -s -o /dev/null -w "%{http_code}" http://localhost/)

	if [ "$code" = "200" ]; then
		echo "OK"
		exit 0
	fi

	sleep 3

done

echo "Validation failed"
exit 1

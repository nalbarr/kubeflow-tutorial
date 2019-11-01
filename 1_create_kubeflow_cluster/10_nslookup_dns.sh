#!/bin/bash

# poll to check if DNS reachable

while true; do 
	nslookup ${KFAPP}.endpoints.${PROJECT}.cloud.goog
	sleep 5
done

#!/bin/bash

message=$1
if [[ -z "$message" ]]; then $message="did stuff"; fi
cd $MY_SCRIPTS && git add . && git commit -am $message && git push



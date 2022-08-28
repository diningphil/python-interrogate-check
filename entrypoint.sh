#!/bin/sh
set -eax

interrogate --version

if interrogate -i -M --fail-under $2 --generate-badge $3 $1 | grep -q 'PASSED'; then
    interrogate -i -M --fail-under $2 --generate-badge $3 $1
    exit 0
else 
    interrogate -i -M --fail-under $2 --generate-badge $3 $1
    exit 1
fi

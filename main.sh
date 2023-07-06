#!/bin/sh
echo "DEBUG: INPUT_TAG: $INPUT_TAG INPUT_DESC: $INPUT_DESC"
gh release create $INPUT_TAG --notes "$INPUT_DESC"
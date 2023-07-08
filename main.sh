#!/bin/sh


echo "INFO: INPUT_TAG : '$INPUT_TAG'"
echo "INFO: INPUT_DESC: '$INPUT_DESC'"

gh release create "$INPUT_TAG" --title "$INPUT_TAG" --notes "'$INPUT_DESC'"
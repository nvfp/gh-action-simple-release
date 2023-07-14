#!/bin/sh
echo "INFO: INPUT_TAG : '$INPUT_TAG'"
echo "INFO: INPUT_DESC: '$INPUT_DESC'"

# Check
if [[ $INPUT_TAG =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    status="latest"
    echo "INFO: status: latest."
elif [[ $INPUT_TAG =~ ^[0-9]+\.[0-9]+[0-9]+b[0-9]*$ ]]; then
    status="prerelease"
    echo "INFO: status: prerelease."
else
    echo "DEBUG: Invalid tag: $INPUT_TAG"
    exit 1
fi

# Release
if [ "$status" == "latest" ]; then
    gh release create "$INPUT_TAG" --title "$INPUT_TAG" --notes "$INPUT_DESC"
elif [ "$status" == "prerelease" ]; then
    gh release create "$INPUT_TAG" --title "$INPUT_TAG" --notes "$INPUT_DESC" --prerelease
fi
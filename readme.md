# GitHub Action: Simple Release

Create a release, just specify TAG and DESCRIPTION.


## Usage

```yml
name: Simple release

on:
  push:
    branches:
      - main

jobs:
  release:
    runs-on: ubuntu-latest
    permissions:
      contents: write

    steps:
      - name: Checkout
        uses: actions/checkout@v3

      - name: Release
        uses: nvfp/gh-action-simple-release@1.4.0
        env:
          GH_TOKEN: ${{ github.token }}
        with:
          tag: X.X.X
          desc: Foo bar baz
```

> Note: Change the last two lines (`tag` and `desc` values)


## License

This project is licensed under the MIT license.

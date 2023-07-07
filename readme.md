# GitHub Action: Simple Release


## Usage

```yml
name: Simple release

on:
  push:
    branches:
      - main

jobs:
  my-job:
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


## License

This project is licensed under the MIT license.

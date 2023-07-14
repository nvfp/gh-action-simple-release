# Simple release

For a simple release that just needs to specify a *tag* and a *description*.


## Usage

Required:

1. `tag`: First, make sure your repo doesn't already have the `tag` you intend to use. If you set the tag as `1.2.3`, this workflow will generate a GitHub release with the title `tag` and also create a corresponding Git tag `tag` for your repository. If you specify a prerelease tag in the format of X.X.Xb(X), such as `1.2.3b` or `1.2.3b1`, it will mark the Release as a prerelease.
2. `desc`: The GitHub Release description.

Example:

```yml
name: Simple release

on:
  # Specify your trigger

jobs:
  release:
    runs-on: ubuntu-latest
    permissions:
      contents: write

    steps:
      - name: Checkout
        uses: actions/checkout@v3

      - name: Release
        uses: nvfp/gh-action-simple-release@1.9.0
        env:
          GH_TOKEN: ${{ github.token }}
        with:
          tag: X.X.Xb(X)
          desc: Foo bar baz
```

> **📌Note:** Change the last two lines (`tag` and `desc` values)


## License

This project is licensed under the MIT license.

# Simple release

For a simple release that just needs to specify a *tag* and a *description*.


## Usage

Required:

1. `tag`: First, make sure your repo doesn't already have the `tag` you intend to use. When you set the `tag` in the format of `X.X.X` (e.g., `1.2.3`), this workflow will generate the **latest** GitHub release with title `tag` and also create a corresponding Git tag `tag` for your repository. If you specify a **prerelease** tag in the format of `X.X.Xb(X)`, such as `1.2.3b` or `1.2.3b1`, it will mark the Release as a prerelease.
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
        uses: nvfp/gh-action-simple-release@1.13.0
        env:
          GH_TOKEN: ${{ github.token }}
        with:
          tag: 3.2.1
          desc: 'Foo: bar baz'
```


## License

This project is licensed under the MIT license.

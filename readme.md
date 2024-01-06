# Simple release

For a simple release that just needs to specify a *tag* and a *description*.


## Usage

Required:

1. `tag`: First, make sure your repo doesn't already have the `tag` you intend to use. When you set the `tag` in the format of `X.X.X` (e.g., `1.2.3`), this workflow will generate the ***latest*** GitHub release with title `tag` and also create a corresponding Git tag `tag` for your repository. If you specify a ***prerelease*** tag in the format of `X.X.Xb(X)`, such as `1.2.3b` or `1.2.3b1`, it will mark the Release as a prerelease.
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

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

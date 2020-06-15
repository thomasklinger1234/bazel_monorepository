# Tools

![Meme](https://raw.githubusercontent.com/RogueDudes/roguedudes.github.io/master/assets/images/automate.jpg)

We want to automate as much as possible. Here are some tools we use:

* We use tools to handle bazel BUILD files (see [here](bazel_tools)):
  * [buildifier](https://github.com/bazelbuild/buildtools/blob/master/buildifier/README.md) - For formatting BUILD files
  * [buildozer](https://github.com/bazelbuild/buildtools/blob/master/buildozer/README.md) - For doing command-line operations on these files (e.g add dependency to target).
* CI (using GitHub Actions) to enforce formatting, pre-commit checks, compile and test everything

## Using Tools

- `bazel run //tools:buildifier -- -mode=fix -r $(pwd)` runs buildifier on the project to fix BUILD files
- `bazel run //tools:shfmt $(find . -name '*.sh' | xargs realpath)` runs shfmt to format all bash scripts
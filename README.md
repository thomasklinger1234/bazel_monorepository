# bazel_monorepository

![master](https://github.com/thomasklinger1234/bazel_monorepository/workflows/master/badge.svg)

> Experiment for building a polyglot monorepo based on Bazel.

## About Monorepos

A monorepo is a software development approach where all code is stored in a single repository. Some things are easier to do in a monorepo, such as sharing a proto file across front-end and backend, some things are harder, such as per-repo control over collaborators, email notifications, commit history etc. 

Some good reads about the monorepo approach:

- [trunkbaseddevelopment.com/monorepos](https://trunkbaseddevelopment.com/monorepos/)
- [Why Google stores billions of lines of code in a single repository](https://cacm.acm.org/magazines/2016/7/204032-why-google-stores-billions-of-lines-of-code-in-a-single-repository/fulltext)

## Support

### Platforms

- OSX
- Linux 

### Languages

*None*

## Tools

*None*

## Usage

### Installation

Install [Bazel](https://docs.bazel.build/versions/master/install.html) - that's it. You can run `./bootstrap.sh` for OSX or Ubuntu machines.

### Build & Test

- Build everything: `bazel build //...`
- Test everything: `bazel test //...`
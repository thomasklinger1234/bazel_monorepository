workspace(
    name = "thomasklinger1234_bazel_monorepository",
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_jar")

############################################
# COMMON
############################################

http_file(
    name = "buildozer",
    executable = True,
    sha256 = "1c1a63d786327b0708273290e888d09f6aa93284db78d2cc0e15f7573c7f9e68",
    urls = ["https://github.com/bazelbuild/buildtools/releases/download/3.2.1/buildozer"],
)

http_file(
    name = "buildozer_osx",
    executable = True,
    sha256 = "17f41c92e64dc2afb7f69cd102b3d81278afdf1afcac6956e5f02ae934dafcff",
    urls = ["https://github.com/bazelbuild/buildtools/releases/download/3.2.1/buildozer.mac"],
)

http_file(
    name = "buildifier",
    executable = True,
    sha256 = "ad931704631c2ac6199418cc87a64e08b5a10448e085078d6ce64d18a52f0c72",
    urls = ["https://github.com/bazelbuild/buildtools/releases/download/3.2.1/buildifier"],
)

http_file(
    name = "buildifier_osx",
    executable = True,
    sha256 = "df51cfa71eec35533cb31e8d76efd06c68fd0ba70db54490a9817186ccb4c991",
    urls = ["https://github.com/bazelbuild/buildtools/releases/download/3.2.1/buildifier.mac"],
)

http_file(
    name = "shfmt",
    executable = True,
    sha256 = "3e519c372749174a09383fdd81030630e3755d654adf93839faf334c025289e8",
    urls = ["https://github.com/mvdan/sh/releases/download/v3.1.1/shfmt_v3.1.1_linux_amd64"],
)

http_file(
    name = "shfmt_osx",
    executable = True,
    sha256 = "9c388336e9b8307eae460ef87e53613b5113237bc8c8953e2dd3b449a447b6c0",
    urls = ["https://github.com/mvdan/sh/releases/download/v3.1.1/shfmt_v3.1.1_darwin_amd64"],
)

############################################
# PYTHON SUPPORT
############################################

http_archive(
    name = "rules_python",
    url = "https://github.com/bazelbuild/rules_python/releases/download/0.0.2/rules_python-0.0.2.tar.gz",
    strip_prefix = "rules_python-0.0.2",
    sha256 = "b5668cde8bb6e3515057ef465a35ad712214962f0b3a314e551204266c7be90c",
)

load(
  "@rules_python//python:repositories.bzl",
  "py_repositories",
)

py_repositories()

load(
  "@rules_python//python:pip.bzl",
  "pip_repositories",
  "pip3_import",
)

pip_repositories()

pip3_import(
  name = "python_deps",
  requirements = "//third_party/python:requirements.txt",
)

load("@python_deps//:requirements.bzl",
  "pip_install"
)

pip_install()

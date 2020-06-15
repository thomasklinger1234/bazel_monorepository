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
    sha256 = "60df58b007329462955bace7e2b30773765670e9",
    urls = ["https://github.com/bazelbuild/buildtools/releases/download/3.2.1/buildozer"],
)

http_file(
    name = "buildozer_osx",
    executable = True,
    sha256 = "cbe6e953c881a8f6f53f645500ed81d16b95673e",
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

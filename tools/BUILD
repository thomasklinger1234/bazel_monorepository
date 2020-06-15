package(default_visibility = ["//visibility:public"])

sh_binary(
    name = "buildifier",
    srcs = ["bazel_tools/buildifier.sh"],
    data = [
        "@buildifier//file",
        "@buildifier_osx//file",
    ],
)

sh_binary(
    name = "buildozer",
    srcs = ["bazel_tools/buildozer.sh"],
    data = [
        "@buildozer//file",
        "@buildozer_osx//file",
    ],
)

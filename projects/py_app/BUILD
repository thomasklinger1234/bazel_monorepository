package(default_visibility = ["//visibility:__subpackages__"])

load("@python_deps//:requirements.bzl", "requirement")

py_library(
    name = "lib",
    srcs = [
        "__init__.py",
        "lib.py",
    ],
)

py_test(
    name = "lib_test",
    srcs = [
        "lib_test.py",
    ],
    deps = [
        ":lib",
    ],
)

py_binary(
    name = "app",
    srcs = [
        "app.py",
    ],
    data = [],
    deps = [
        ":lib",
        requirement("requests"),
    ],
)

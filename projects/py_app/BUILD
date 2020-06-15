package(default_visibility = ["//visibility:__subpackages__"])

load("@python_deps//:requirements.bzl", "requirement")

py_library(
  name = "lib",
  srcs = [
    "lib.py",
    "__init__.py",
  ]
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
  deps = [
    ":lib",
    requirement("requests"),
  ],
  data = [],
)

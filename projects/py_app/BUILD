package(default_visibility = ["//visibility:__subpackages__"])

py_library(
  name = "lib",
  srcs = [
    "lib.py",
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
  ],
  data = [],
)

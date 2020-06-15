package(default_visibility = ["//visibility:public"])

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
  ]
)

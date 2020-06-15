# py_lib

A library that exposes fancy methods.

## Usage

In your `BUILD` file

```
py_binary(
  name = "app",
  deps = [
    "//projects/py_lib:lib",
  ],
  srcs = [
    "app.py",
  ],
)
```

and your `app.py`

```python
import projects.py_lib.lib as py_lib

py_lib.add(2, 2)
```

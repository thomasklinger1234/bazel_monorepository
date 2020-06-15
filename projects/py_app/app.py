#!/usr/bin/env python

import requests
import lib
import projects.py_lib.lib as py_lib

if __name__ == '__main__':
    print(lib.welcome_message())
    google_result = requests.get("https://google.com")
    google_result.raise_for_status()

    print(f"google result: {google_result.text}")

    print(f"2 + 2 = {py_lib.add(2, 2)}")

#!/usr/bin/env python

import requests
import lib

if __name__ == '__main__':
    print(lib.welcome_message())
    google_result = requests.get("https://google.com")
    google_result.raise_for_status()

    print(f"google result: {google_result.text}")

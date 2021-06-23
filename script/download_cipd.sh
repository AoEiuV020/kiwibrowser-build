#!/bin/sh
git clone --depth 1 "https://github.com/kiwibrowser/dependencies" .cipd
cp .cipd/.gclient .
cp .cipd/.gclient_entries .

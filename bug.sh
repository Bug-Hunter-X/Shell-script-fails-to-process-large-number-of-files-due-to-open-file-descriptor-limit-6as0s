#!/bin/bash

# This script attempts to process a large number of files, but it fails due to a limitation in the system's ability to handle a large number of open file descriptors.

find . -name "*.txt" -print0 | while IFS= read -r -d $'\0' file; do
  # Process each file
  # ... some processing ...
done
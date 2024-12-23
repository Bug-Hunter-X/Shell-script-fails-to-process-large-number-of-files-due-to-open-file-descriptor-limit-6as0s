#!/bin/bash

# This improved script uses xargs to process files in batches, avoiding the open file descriptor limit.

find . -name "*.txt" -print0 | xargs -0 -n 100 sh -c 'for file; do
  # Process each file
  # ... some processing ...
done' sh
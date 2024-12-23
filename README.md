# Shell Script File Descriptor Limit Bug

This repository demonstrates a common error in shell scripting where exceeding the system's limit on open file descriptors causes a script to fail when processing a large number of files.

The script `bug.sh` attempts to process many files, but fails because it keeps all files open simultaneously.

The solution `bugSolution.sh` uses `xargs` to run the processing in smaller batches, avoiding the open file descriptor limitation.
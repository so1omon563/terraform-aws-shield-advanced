#!/bin/bash
# Get the root directory of the repo
test_root=$(git rev-parse --show-toplevel)/test
# Get the directories to test
test_dirs=$(ls "${test_root}")

# echo "${test_root}"
for i in ${test_dirs}; do
    terraform -chdir="${test_root}/$i" init && terraform -chdir="${test_root}/$i" test
done

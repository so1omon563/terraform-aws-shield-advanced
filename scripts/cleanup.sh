#!/bin/bash
# Get the root directory of the repo
repo_root=$(git rev-parse --show-toplevel)

# Get rid of any local caches
find ${repo_root} -name ".terraform" -type d -exec rm -rf "{}" \; &> /dev/null
find ${repo_root} -name "terraform.tfstate.d" -type d -exec rm -rf "{}" \; &> /dev/null
find ${repo_root} -name "*.tfstate" -type f -exec rm -rf "{}" \; &> /dev/null
find ${repo_root} -name ".terraform.lock.hcl" -type f -exec rm -rf "{}" \; &> /dev/null
find ${repo_root} -name ".kitchen" -type d -exec rm -rf "{}" \; &> /dev/null

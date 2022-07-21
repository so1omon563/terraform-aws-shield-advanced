#!/bin/bash
# This script is designed to be run to populate the githooks in .githooks to your local repository.
# It requires that git is in $PATH
set -e
set -u
set -o pipefail

git config core.hooksPath .githooks

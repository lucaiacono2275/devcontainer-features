#!/bin/bash
set -e

# Optional: Import test library
source dev-container-features-test-lib

# Definition specific tests
check "version" helm plugin list | grep unittest

# Report result
reportResults
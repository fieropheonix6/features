#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib
# Definition specific tests
function file_not_overridden() {
    cat $1 | grep 'alias fnomockalias=' | grep testingmock
}
check "default-zsh-with-no-zshrc" file_not_overridden /home/devcontainer/.zshrc

# Report result
reportResults

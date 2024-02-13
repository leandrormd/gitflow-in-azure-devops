#!/bin/bash

# Imports
. $HOME/gitflow/modules/get.sh
. $HOME/gitflow/modules/show.sh
. $HOME/gitflow/modules/verify.sh

# Validations
verifyInGitRepo;
verifyBranchTypeIs "release";
verifyNoUncommitedChanges;
verifyUpToDateBranch;

# Process
RELEASE_NAME="$(getBranchNameWithoutPrefix)";
tryCreatePullRequest "master" "Next release: $RELEASE_NAME" "OPEN BROWSER";
showSuccess "The release branch was published";
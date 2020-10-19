#!/bin/sh

ln -s ../../pre-commit.sh .git/hooks/pre-commit
chmod +x .git/hooks/prepare-commit-msg
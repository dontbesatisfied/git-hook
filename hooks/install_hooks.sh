#!/bin/sh

ROOT_DIR="$(pwd)"

echo "$ROOT_DIR"

ln -s $ROOT_DIR/hooks/prepare-commit-msg .git/hooks/prepare-commit-msg

chmod +x .git/hooks/prepare-commit-msg
chmod +x .git/hooks/pre-push

echo "commitLint 적용 성공"
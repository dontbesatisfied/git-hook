#!/bin/sh

ROOT_DIR="$(pwd)"

echo "$ROOT_DIR"

ln -s $ROOT_DIR/hooks/prepare-commit-msg .git/hooks/prepare-commit-msg
ln -s $ROOT_DIR/hooks/pre-push .git/hooks/pre-push
ln -s $ROOT_DIR/hooks/commit-msg .git/hooks/commit-msg

chmod +x .git/hooks/prepare-commit-msg
chmod +x .git/hooks/pre-push
chmod +x .git/hooks/commit-msg

echo "Success to inject prepare-commit-msg in git hooks"
echo "Success to inject pre-push in git hooks"
echo "Success to inject commit-msg in git hooks"
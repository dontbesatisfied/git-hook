#!/bin/sh

ROOT_DIR="$(pwd)"

echo "$ROOT_DIR"

ln -s $ROOT_DIR/hooks/prepare-commit-msg .git/hooks/prepare-commit-msg
ln -s $ROOT_DIR/hooks/pre-push .git/hooks/pre-push

chmod +x .git/hooks/prepare-commit-msg
chmod +x .git/hooks/pre-push

echo "Success to inject prepare-commit-msg in git hooks"
echo "Success to inject pre-push in git hooks"
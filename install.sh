#!/bin/sh
# git-context installer - one line, zero deps
# curl -sSfL https://promptpolish-ai.github.io/git-context/install.sh | sh

VERSION="1.0.0"
BIN="$HOME/.local/bin"
mkdir -p "$BIN"

if command -v python3 >/dev/null 2>&1; then
    curl -sSfL "https://raw.githubusercontent.com/promptpolish-ai/git-context/main/git-context" -o "$BIN/git-context"
    chmod +x "$BIN/git-context"
    echo "✅ Installed git-context $VERSION to $BIN/git-context"
    echo "   Add to PATH: export PATH=\"\$PATH:\$BIN\""
    echo ""
    echo "   Usage: git-context --files -o context.txt"
    echo "   Repo:  https://github.com/promptpolish-ai/git-context"
else
    echo "❌ Need Python 3.8+"
    exit 1
fi

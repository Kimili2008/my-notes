#!/bin/bash
# Daily auto commit + push for my-notes. Run by launchd (see install-auto-sync.sh).
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin"
REPO="$(cd "$(dirname "$0")/.." && pwd)"
LOG="$HOME/Library/Logs/my-notes-autosync.log"
cd "$REPO" || { echo "$(date) cannot cd to $REPO" >> "$LOG"; exit 1; }
{
  echo "=== $(date '+%Y-%m-%d %H:%M:%S') ==="
  git add -A
  if git diff --cached --quiet; then
    echo "No changes to commit"
  else
    git commit -m "Auto-sync: $(date '+%Y-%m-%d %H:%M')"
  fi
  git pull --rebase --autostash && git push
} >> "$LOG" 2>&1

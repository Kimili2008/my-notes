#!/bin/bash
# Installs a launchd job that runs auto-sync.sh every day at 22:00.
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
SCRIPT="$DIR/auto-sync.sh"
LABEL="com.kimi.mynotes-autosync"
PLIST="$HOME/Library/LaunchAgents/$LABEL.plist"
chmod +x "$SCRIPT"
mkdir -p "$HOME/Library/LaunchAgents" "$HOME/Library/Logs"
cat > "$PLIST" <<PL
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>Label</key><string>$LABEL</string>
  <key>ProgramArguments</key>
  <array><string>/bin/bash</string><string>$SCRIPT</string></array>
  <key>StandardOutPath</key><string>$HOME/Library/Logs/my-notes-autosync.launchd.log</string>
  <key>StandardErrorPath</key><string>$HOME/Library/Logs/my-notes-autosync.launchd.log</string>
  <key>StartCalendarInterval</key>
  <dict><key>Hour</key><integer>22</integer><key>Minute</key><integer>0</integer></dict>
</dict>
</plist>
PL
launchctl bootout "gui/$(id -u)" "$PLIST" 2>/dev/null || true
launchctl bootstrap "gui/$(id -u)" "$PLIST"
echo "Installed. Daily sync at 22:00. Log: ~/Library/Logs/my-notes-autosync.log"
echo "Test now with: launchctl kickstart gui/$(id -u)/$LABEL"

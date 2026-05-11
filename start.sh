#!/bin/bash
echo "Starting DCL containers..."
cd /workspaces/DCL-Codespace
docker compose -f pwd.yml start
echo "✅ Done! Open: https://$CODESPACE_NAME-8080.app.github.dev"

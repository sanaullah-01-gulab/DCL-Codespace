#!/bin/bash
echo "Stopping DCL containers safely..."
cd /workspaces/DCL-Codespace
docker compose -f pwd.yml stop
echo "✅ Stopped safely — data preserved"

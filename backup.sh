cat > /workspaces/DCL-Codespace/backup.sh << 'EOF'
#!/bin/bash
echo "Backing up localhost.dcl...."
cd /workspaces/DCL-Codespace
docker compose -f pwd.yml exec backend bench --site dcl.localhost backup
echo "✅ Backup done!"
EOF
chmod +x /workspaces/DCL-Codespace/backup.sh
cat > /workspaces/frappe_docker_qcc/backup.sh << 'EOF'
#!/bin/bash
echo "Backing up development.localhost..."
cd /workspaces/frappe_docker_qcc
docker compose -f pwd.yml exec backend bench --site development.localhost backup
echo "✅ Backup done!"
EOF
chmod +x /workspaces/frappe_docker_qcc/backup.sh
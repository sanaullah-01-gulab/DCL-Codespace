cat > /workspaces/frappe_docker_qcc/start.sh << 'EOF'
#!/bin/bash
echo "Starting QCC containers..."
cd /workspaces/frappe_docker_qcc
docker compose -f pwd.yml start
sleep 15
echo "Installing custom apps..."
docker compose -f pwd.yml exec backend pip install -e /home/frappe/frappe-bench/apps/qatar_contracting
echo "✅ Done! Open: https://$CODESPACE_NAME-8080.app.github.dev"
EOF
chmod +x /workspaces/frappe_docker_qcc/start.sh
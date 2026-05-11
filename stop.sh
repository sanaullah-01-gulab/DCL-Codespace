cat > /workspaces/frappe_docker_qcc/stop.sh << 'EOF'
#!/bin/bash
echo "Stopping QCC containers safely..."
cd /workspaces/frappe_docker_qcc
docker compose -f pwd.yml stop
echo "✅ Stopped safely — data preserved"
EOF
chmod +x /workspaces/frappe_docker_qcc/stop.sh
#!/usr/bin/env bash
echo "### Performing final clean-up tasks ###"
# Disable dependency for ecs agent on cloud init
# See https://github.com/aws/amazon-ecs-agent/issues/1707
sudo cp /usr/lib/systemd/system/ecs.service /etc/systemd/system/ecs.service 
sudo sed -i '/After=cloud-final.service/d' /etc/systemd/system/ecs.service
sudo systemctl daemon-reload
# Stop and disable ECS agent and Docker
sudo systemctl stop ecs
sudo systemctl disable ecs
sudo docker system prune -f -a
sudo systemctl stop docker
sudo systemctl disable docker
sudo rm -rf /var/log/docker /var/log/ecs/*
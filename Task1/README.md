📝 Task1/README.md

Part 1 – Environment Setup

Goal:
Launch an Ubuntu EC2 instance, create a devops_intern user, give it sudo (NOPASSWD), and change the hostname.

Steps I did

Launched EC2

Ubuntu Server 22.04 LTS, t2.micro, Free Tier

Connected via SSH

ssh -i <key>.pem ubuntu@35.154.252.224


Created user and gave sudo access

sudo adduser devops_intern
sudo usermod -aG sudo devops_intern
echo "devops_intern ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/devops_intern


Changed hostname

sudo hostnamectl set-hostname adish-devops


Verified requirements

hostname
grep devops_intern /etc/passwd
sudo -u devops_intern sudo whoami


Deliverable:

task1_screenshot.png – shows hostname, /etc/passwd entry, and sudo whoami as devops_intern.

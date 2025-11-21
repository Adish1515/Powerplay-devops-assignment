Installed Nginx on the EC2 instance and serve a simple HTML page that shows:

My name

Instance ID (from AWS metadata)

Server uptime

Steps I did

Installed Nginx

sudo apt update
sudo apt install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx


Fetched metadata + uptime (for testing)

curl -s http://169.254.169.254/latest/meta-data/instance-id
uptime -p


Created /var/www/html/index.html

Static HTML page that prints:

Name: Adish Suryawanshi

Instance ID: i-08bd76a2cc22930ef

Uptime: 

Verified in browser

Opened: http://<EC2-public-ip>/

Deliverable:

task2_screenshot.png

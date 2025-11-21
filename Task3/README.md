System Monitoring Script using Cron
Part 3 – Monitoring Script

Goal:
Create /usr/local/bin/system_report.sh that logs system metrics and run it every 5 minutes via cron.
Metrics logged each run:

Current date and time

Uptime

CPU usage (%)

Memory usage (%)

Disk usage (%)

Top 3 processes by CPU

Steps I did

Created script

sudo nano /usr/local/bin/system_report.sh
# (script prints the required metrics)
sudo chmod +x /usr/local/bin/system_report.sh


Configured cron (root crontab)

sudo crontab -e


Added:

*/5 * * * * /usr/local/bin/system_report.sh >> /var/log/system_report.log 2>&1


Verified log file

sudo tail -n 50 /var/log/system_report.log


Saw multiple runs with the metrics listed above.

Deliverables:

system_report.sh – monitoring script.

cronjob-5mins.png – screenshot of cron configuration.

Task3-screenshot.png – screenshot of /var/log/system_report.log after multiple runs.

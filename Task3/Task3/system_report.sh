#!/bin/bash
echo "----- System Report -----"
echo "Date & Time: $(date)"
echo "Uptime: $(uptime -p)"
echo "CPU Usage: $(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')%"
echo "Memory Usage: $(free | awk '/Mem/{printf("%.2f"), $3/$2 * 100.0}')%"
echo "Disk Usage: $(df -h / | awk 'NR==2 {print $5}')"
echo "-------------------------"

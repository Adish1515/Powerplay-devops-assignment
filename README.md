 Powerplay DevOps Intern Assignment

This repository contains all four tasks completed as part of the Powerplay DevOps Intern Assignment.
Each task is organized in its own folder with documentation and screenshots.
 Task Overview
🔹 Task 1 – AWS IAM User, EC2 Instance & SSH Access

Objective:

Create an IAM user with programmatic access

Launch an Ubuntu EC2 instance

SSH into the instance using a key pair

Create a new Linux user inside the VM

Verify access & basic commands

📁 Folder: Task1/
Contents:

task1_screenshot.png (SSH & user creation proof)

🔹 Task 2 – Nginx Setup & EC2 Metadata Webpage

Objective:

Install Nginx on EC2

Create a simple webpage showing:

Name

EC2 Instance ID

Instance uptime

Verify using EC2 Public IP

📁 Folder: Task2/
Contents:

task2_screenshot.png (Webpage in browser)

Task2-commands.png

README with commands used

🔹 Task 3 – Monitoring Script + Cron Job

Objective:

Write a Bash script to log system metrics:

Date & Time

Uptime

CPU Usage

Memory Usage

Disk Usage

Top CPU-consuming processes

Configure a cron job to run every 5 minutes

Store output in /var/log/system_report.log

📁 Folder: Task3/
Contents:

system_report.sh

cronjob-5mins.png

Task3-screenshot.png (log output)

README describing steps

🔹 Task 4 – AWS CloudWatch Logs Integration

Objective:

Create a CloudWatch Log Group: /devops/intern-metrics

Create a Log Stream: system-report-stream

Convert system_report.log into JSON

Upload events using AWS CLI

Verify logs in CloudWatch

📁 Folder: Task4/
Contents:

task4_awscli.png (CLI command screenshot)

task4_output.png (CloudWatch logs)

README describing AWS upload steps

📂 Repository Structure
Powerplay-devops-assignment/
│── README.md
│
├── Task1/
│   └── task1_screenshot.png
│
├── Task2/
│   ├── task2_screenshot.png
│   ├── Task2-commands.png
│   └── README.md
│
├── Task3/
│   ├── system_report.sh
│   ├── cronjob-5mins.png
│   ├── Task3-screenshot.png
│   └── README.md
│
└── Task4/
    ├── task4_awscli.png
    ├── task4_output.png
    └── README.md

Part 4 – AWS Integration

Goal:
Send the system_report.log data to CloudWatch Logs using the AWS CLI.

Steps I did

Created log group and log stream

aws logs create-log-group --log-group-name "/devops/intern-metrics"
aws logs create-log-stream \
  --log-group-name "/devops/intern-metrics" \
  --log-stream-name "system-report-stream"


Converted log file to JSON events

jq -R -s -c '
  split("\n")
  | map(select(length > 0))
  | map({timestamp: (now|floor*1000), message: .})
' /var/log/system_report.log > log.json


Uploaded logs using AWS CLI

aws logs put-log-events \
  --log-group-name "/devops/intern-metrics" \
  --log-stream-name "system-report-stream" \
  --log-events file://log.json


Verified in CloudWatch

Went to CloudWatch → Log groups → /devops/intern-metrics → system-report-stream

Confirmed that entries from system_report.log appeared.

Deliverables:

task4_awscli.png – screenshot of AWS CLI commands used to upload logs.

task4_output.png – screenshot of CloudWatch Logs showing the data in system-report-stream.

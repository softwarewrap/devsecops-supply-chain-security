#!/usr/bin/env bash set -e

Import a security report into DefectDojo

Requires DefectDojo API key and engagement identifiers

if [ -z “$DD_API_KEY” ]; then echo “DD_API_KEY environment variable not
set” exit 1 fi

if [ -z “$DD_SERVER” ]; then echo “DD_SERVER environment variable not
set” exit 1 fi

ENGAGEMENT_ID=ENGAGEMENT_(I)D : −1SCAN_(T)YPE={SCAN_TYPE:-“Semgrep JSON
Report”} REPORT_FILE=${REPORT_FILE:-semgrep-report.json}

echo “Uploading report to DefectDojo…”

curl -X POST “${DD_SERVER}/api/v2/import-scan/”
-H “Authorization: Token ${DD_API_KEY}" \
  -F "engagement=${ENGAGEMENT_ID}”
-F “scan_type=${SCAN_TYPE}" \
  -F "file=@${REPORT_FILE}”

echo “Import complete”

#!/usr/bin/env bash set -e

Upload SBOM to Dependency-Track

Requires API key and project identifiers

if [ -z “$DT_API_KEY” ]; then echo “DT_API_KEY environment variable not
set” exit 1 fi

if [ -z “$DT_SERVER” ]; then echo “DT_SERVER environment variable not
set” exit 1 fi

PROJECT_NAME=PROJECT_(N)AME : −example − projectPROJECT_(V)ERSION={PROJECT_VERSION:-0.1.0}
SBOM_FILE=${SBOM_FILE:-sbom.json}

echo “Uploading SBOM to Dependency-Track…”

curl -X POST “${DT_SERVER}/api/v1/bom”
-H “X-Api-Key: ${DT_API_KEY}" \
  -H "Content-Type: multipart/form-data" \
  -F "autoCreate=true" \
  -F "projectName=${PROJECT_NAME}”
-F “projectVersion=${PROJECT_VERSION}" \
  -F "bom=@${SBOM_FILE}”

echo “Upload complete”

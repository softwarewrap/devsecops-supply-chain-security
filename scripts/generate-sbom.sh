#!/usr/bin/env bash set -e

Generate a CycloneDX SBOM using Syft

Usage: ./generate-sbom.sh [target_directory]

TARGET_DIR=${1:-.} OUTPUT_FILE=sbom.json

echo “Generating SBOM for ${TARGET_DIR} …”

syft “${TARGET_DIR}" -o cyclonedx-json > "${OUTPUT_FILE}”

echo “SBOM generated at ${OUTPUT_FILE}”

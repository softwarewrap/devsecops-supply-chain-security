# DefectDojo Integration

## Overview

DefectDojo is an open‑source vulnerability management platform that
aggregates security findings from multiple scanning tools. It provides
centralized visibility into security issues across projects and
development teams.

DefectDojo supports structured vulnerability tracking, remediation
workflows, and security reporting.

## Role in the DevSecOps Architecture

Within the DevSecOps architecture implemented in this repository,
DefectDojo serves as the **security findings management layer**.

Its responsibilities include:

-   consolidating scan results from multiple tools
-   prioritizing vulnerabilities based on severity
-   tracking remediation progress
-   providing dashboards and security reports

## Importing Scan Results

DefectDojo supports importing results from many security scanners
including:

-   Semgrep
-   Trivy
-   Checkov
-   dependency scanners
-   SAST and DAST tools

Scan results are imported through the API endpoint:

    POST /api/v2/import-scan/

The repository includes an example script (`import-defectdojo.sh`) that
demonstrates how security scan results can be uploaded automatically.

## Engagement Model

DefectDojo organizes security findings according to a hierarchical
structure:

  Level        Purpose
  ------------ -------------------------------------
  Product      Represents an application or system
  Engagement   Represents a testing activity
  Test         Represents a specific scan
  Finding      Individual vulnerability record

This structure allows organizations to track vulnerabilities across
multiple testing activities and development cycles.

## Vulnerability Lifecycle

Typical vulnerability lifecycle in DefectDojo:

1.  Scan result imported
2.  Vulnerability created
3.  Finding reviewed and prioritized
4.  Remediation assigned to development team
5.  Fix implemented
6.  Finding marked as resolved

This workflow ensures that vulnerabilities identified by automated
scanning tools are tracked through resolution.

## Reporting and Governance

DefectDojo provides reporting capabilities that support security
governance and compliance requirements.

Available reports include:

-   vulnerability severity distribution
-   remediation timelines
-   unresolved critical findings
-   vulnerability trends across projects

These reports help technical leadership monitor security posture and
evaluate the effectiveness of security programs.

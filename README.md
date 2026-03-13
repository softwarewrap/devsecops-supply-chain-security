# Open DevSecOps Software Supply Chain Security Stack

![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)
![DevSecOps](https://img.shields.io/badge/security-DevSecOps-brightgreen)
![SBOM](https://img.shields.io/badge/SBOM-CycloneDX-blueviolet)
![CI/CD](https://img.shields.io/badge/CI-CD%20Security-orange)
![Status](https://img.shields.io/badge/status-reference%20architecture-lightgrey)

This repository provides a **reference DevSecOps architecture and
implementation examples** intended for laboratories, research teams, and
engineering groups building secure software supply chains.

It demonstrates how multiple open‑source security tools can be combined
to provide **continuous security validation, software supply chain
visibility, and structured vulnerability management**.

------------------------------------------------------------------------

# Key Features

• **End‑to‑End DevSecOps Pipeline** integrating security directly into
CI/CD workflows\
• **Software Bill of Materials (SBOM) generation** using Syft and
CycloneDX\
• **Automated vulnerability scanning** across code, dependencies,
containers, and infrastructure\
• **Continuous supply chain monitoring** with Dependency‑Track\
• **Centralized vulnerability management** with DefectDojo\
• **Reference GitHub Actions pipeline** demonstrating automated security
gates\
• **Research‑lab friendly architecture** suitable for academic software
environments\
• **Alignment with modern compliance expectations**, including SBOM
transparency initiatives

------------------------------------------------------------------------

# Architecture Overview

![CI/CD Security Flow](docs/diagrams/cicd-security-flow.svg)

The architecture integrates security validation throughout the
development lifecycle.

Security checks are applied during:

-   source code development
-   dependency resolution
-   infrastructure definition
-   container build processes
-   deployment monitoring
-   vulnerability remediation workflows

This layered approach provides **defense‑in‑depth for modern software
supply chains**.

------------------------------------------------------------------------

# Security Toolchain

  ------------------------------------------------------------------------
  Security Capability      Tool                    Purpose
  ------------------------ ----------------------- -----------------------
  Static Application       Semgrep                 Detect insecure coding
  Security Testing                                 patterns

  Dependency Vulnerability pip-audit               Identify vulnerable
  Scanning                                         Python libraries

  Infrastructure-as-Code   Checkov                 Detect IaC
  Security                                         misconfigurations

  Container Image Scanning Trivy                   Identify
                                                   vulnerabilities in
                                                   container images

  SBOM Generation          Syft                    Produce software
                                                   component inventories

  Supply Chain Monitoring  Dependency-Track        Track vulnerabilities
                                                   in deployed components

  Vulnerability Management DefectDojo              Aggregate findings and
                                                   track remediation
  ------------------------------------------------------------------------

Together these tools provide **continuous security visibility across the
entire development pipeline**.

------------------------------------------------------------------------

# Example CI Security Workflow

The automated security pipeline is implemented using GitHub Actions.

Location:

.github/workflows/security-pipeline.yml

The workflow performs:

1.  Semgrep static code scanning\
2.  Dependency vulnerability analysis using pip-audit\
3.  Infrastructure validation using Checkov\
4.  Container vulnerability scanning using Trivy\
5.  SBOM generation using Syft\
6.  Upload of SBOM data to Dependency‑Track\
7.  Import of findings into DefectDojo

This demonstrates how security validation can be **fully automated
inside CI/CD pipelines**.

------------------------------------------------------------------------

# Repository Structure

``` text
.
├── deploy
│   └── docker-compose.security.yml
│
├── docs
│   ├── overview.md
│   ├── architecture.md
│   ├── toolchain.md
│   ├── github-actions-implementation.md
│   ├── dependency-track.md
│   ├── defectdojo.md
│   ├── sbom-governance.md
│   ├── operations.md
│   ├── adoption-roadmap.md
│   ├── security-architecture-threat-model.md
│   ├── compliance-and-government-contracts.md
│   └── diagrams
│       ├── cicd-security-flow.mmd
│       ├── cicd-security-flow.svg
│       └── devsecops-stack.mmd
│
├── scripts
│   ├── generate-sbom.sh
│   ├── upload-sbom.sh
│   └── import-defectdojo.sh
│
├── examples
│
├── .github
│   └── workflows
│       └── security-pipeline.yml
│
└── README.md
```

------------------------------------------------------------------------

# Getting Started

## 1. Understand the Architecture

Start with:

-   docs/overview.md\
-   docs/architecture.md\
-   docs/toolchain.md

These documents explain the conceptual design and the role of each
component.

------------------------------------------------------------------------

## 2. Review the CI Security Pipeline

The automated security workflow is defined in:

.github/workflows/security-pipeline.yml

Implementation details are described in:

docs/github-actions-implementation.md

------------------------------------------------------------------------

## 3. Deploy Governance Platforms

The repository includes a Docker Compose configuration for the
governance layer.

deploy/docker-compose.security.yml

This deploys:

-   **Dependency‑Track** (software supply chain monitoring)
-   **DefectDojo** (vulnerability management and remediation tracking)

------------------------------------------------------------------------

## 4. Generate and Upload SBOMs

Scripts demonstrate integration with governance platforms:

-   scripts/generate-sbom.sh
-   scripts/upload-sbom.sh
-   scripts/import-defectdojo.sh

These scripts illustrate how CI pipelines export security findings into
long‑term monitoring systems.

------------------------------------------------------------------------

# Governance and Compliance

The architecture supports modern secure development expectations
including:

-   **NIST Secure Software Development Framework (SSDF)**
-   **Executive Order 14028 Software Supply Chain Security**
-   emerging **SBOM transparency requirements**

Relevant documentation:

-   docs/sbom-governance.md
-   docs/compliance-and-government-contracts.md

------------------------------------------------------------------------

# Security Architecture and Threat Modeling

Security validation occurs at multiple layers:

-   source code
-   dependencies
-   infrastructure definitions
-   container images
-   software component inventories
-   vulnerability management workflows

See:

docs/security-architecture-threat-model.md

------------------------------------------------------------------------

# Operations and Adoption

Supporting documents describe how organizations can adopt and operate
this architecture:

-   docs/operations.md
-   docs/adoption-roadmap.md
-   docs/quick-start.md

------------------------------------------------------------------------

# Example Use Cases

This reference architecture is useful for:

• **University research laboratories** developing scientific software\
• **Startups** building containerized platforms\
• **Engineering teams** implementing secure CI/CD pipelines\
• **Organizations pursuing government contracts requiring supply chain
security**\
• **Open‑source maintainers** seeking practical DevSecOps patterns

------------------------------------------------------------------------

# License

Apache License 2.0

# Open DevSecOps Software Supply Chain Security Stack

![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)
![DevSecOps](https://img.shields.io/badge/security-DevSecOps-brightgreen)
![SBOM](https://img.shields.io/badge/SBOM-CycloneDX-blueviolet)
![CI/CD](https://img.shields.io/badge/CI-CD%20Security-orange)
![Status](https://img.shields.io/badge/status-reference%20architecture-lightgrey)

This repository provides a **reference DevSecOps architecture and
implementation examples** intended for laboratories, research teams, and
engineering groups building secure software supply chains.

It demonstrates how multiple open-source security tools can be combined
to provide **continuous security validation, software supply chain
visibility, and structured vulnerability management**.

------------------------------------------------------------------------

# Key Features

-   **End-to-End DevSecOps Pipeline** integrating security directly into
    CI/CD workflows
-   **Software Bill of Materials (SBOM) generation** using Syft and
    CycloneDX
-   **Automated vulnerability scanning** across code, dependencies,
    containers, and infrastructure
-   **Continuous supply chain monitoring** with Dependency-Track
-   **Centralized vulnerability management** with DefectDojo
-   **Reference GitHub Actions pipeline** demonstrating automated
    security gates
-   **Architecture suitable for research laboratories and engineering
    teams**
-   **Alignment with modern compliance expectations**, including SBOM
    transparency initiatives

------------------------------------------------------------------------

# Architecture Overview

![CI/CD Security Flow](docs/diagrams/cicd-security-flow.svg)

Security validation is integrated throughout the development lifecycle
including:

-   source code scanning
-   dependency vulnerability analysis
-   infrastructure configuration validation
-   container vulnerability scanning
-   SBOM generation
-   vulnerability aggregation and management

This layered model provides **defense-in-depth across the software
development lifecycle**.

------------------------------------------------------------------------

# Documentation Index

The detailed design and operational documentation for this reference
architecture is located in the **docs** directory.

  ---------------------------------------------------------------------------------
  Document                                      Description
  --------------------------------------------- -----------------------------------
  docs/overview.md                              High-level introduction to the
                                                DevSecOps security architecture

  docs/quick-start.md                           Quick start guide for running the
                                                stack

  docs/architecture.md                          Detailed architecture explanation

  docs/toolchain.md                             Description of the security tools
                                                used in the stack

  docs/github-actions-implementation.md         CI/CD pipeline implementation using
                                                GitHub Actions

  docs/dependency-track.md                      Operating Dependency-Track for
                                                supply chain monitoring

  docs/defectdojo.md                            Using DefectDojo for vulnerability
                                                management

  docs/sbom-governance.md                       SBOM lifecycle management and
                                                governance

  docs/security-architecture-threat-model.md    Threat modeling and security
                                                architecture discussion

  docs/compliance-and-government-contracts.md   Governance and regulatory
                                                compliance considerations

  docs/operations.md                            Day-to-day operational guidance

  docs/adoption-roadmap.md                      Guidance for organizations adopting
                                                this architecture
  ---------------------------------------------------------------------------------

Architecture diagrams are located in:

-   docs/diagrams/devsecops-stack.mmd
-   docs/diagrams/cicd-security-flow.mmd
-   docs/diagrams/cicd-security-flow.svg

------------------------------------------------------------------------

# Example CI Security Workflow

The automated security pipeline is implemented using GitHub Actions.

Location:

.github/workflows/security-pipeline.yml

Pipeline stages:

1.  Static application security testing with Semgrep
2.  Dependency vulnerability scanning using pip-audit
3.  Infrastructure-as-Code validation using Checkov
4.  Container vulnerability scanning using Trivy
5.  SBOM generation using Syft
6.  SBOM upload to Dependency-Track
7.  Findings import into DefectDojo

This demonstrates how security validation can be **fully automated
inside CI/CD pipelines**.

------------------------------------------------------------------------

# Repository Structure

``` text
.
├── deploy
│   ├── docker-compose.security.yml
│   └── env.example
│
├── docs
│   ├── adoption-roadmap.md
│   ├── architecture.md
│   ├── compliance-and-government-contracts.md
│   ├── defectdojo.md
│   ├── dependency-track.md
│   ├── github-actions-implementation.md
│   ├── operations.md
│   ├── overview.md
│   ├── quick-start.md
│   ├── sbom-governance.md
│   ├── security-architecture-threat-model.md
│   ├── toolchain.md
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
├── LICENSE
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

-   **Dependency-Track** (software supply chain monitoring)
-   **DefectDojo** (vulnerability management and remediation tracking)

------------------------------------------------------------------------

## 4. Generate and Upload SBOMs

Scripts demonstrate integration with governance platforms:

-   scripts/generate-sbom.sh
-   scripts/upload-sbom.sh
-   scripts/import-defectdojo.sh

These scripts illustrate how CI pipelines export security findings into
long-term monitoring systems.

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

-   **University research laboratories** developing scientific software
-   **Engineering teams implementing secure CI/CD pipelines**
-   **Organizations pursuing government contracts requiring supply chain**
-   **Startups building containerized platforms**
-   **Open-source maintainers improving supply chain security**

------------------------------------------------------------------------

# License

Apache License 2.0

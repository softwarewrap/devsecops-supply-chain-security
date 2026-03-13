# Quick Start

## Purpose

This document provides a practical starting path for teams that want to evaluate or adopt the DevSecOps reference architecture in this repository.

It is intentionally focused on **getting oriented quickly** rather than covering every design decision in depth.

## Recommended first reading order

If you are new to the repository, read these files in order:

1. `README.md`
2. `docs/overview.md`
3. `docs/architecture.md`
4. `docs/toolchain.md`
5. `docs/github-actions-implementation.md`

This sequence provides the conceptual model first, then the implementation details.

## Minimal adoption path

A sensible minimal adoption path is:

1. add CI-based source code and dependency scanning
2. add container and infrastructure scanning
3. generate SBOMs during builds
4. deploy Dependency-Track
5. integrate DefectDojo for centralized findings management

This lets teams establish early security value before standing up the full governance layer.

## Initial files to inspect

### GitHub Actions workflow

Review:

- `.github/workflows/security-pipeline.yml`

This file shows how the automated pipeline is structured.

### Integration scripts

Review:

- `scripts/generate-sbom.sh`
- `scripts/upload-sbom.sh`
- `scripts/import-defectdojo.sh`

These scripts demonstrate how scan outputs and SBOMs connect to the governance platforms.

### Governance deployment

Review:

- `deploy/docker-compose.security.yml`

This file provides a starting point for deploying Dependency-Track and DefectDojo.

## Initial evaluation questions

Teams evaluating this architecture should ask:

- Which repositories should be scanned first?
- Which languages and build systems need support?
- Are containerized applications in scope?
- Is Infrastructure-as-Code already used?
- Who will review findings and own remediation?
- What evidence is needed for governance or compliance conversations?

## First practical milestone

A strong initial milestone is:

- successful GitHub Actions security pipeline execution
- scan artifacts uploaded
- SBOM generated
- clear understanding of where findings would be triaged

This milestone proves that the scanning layer is working before governance platforms are fully integrated.

## Second practical milestone

The next major milestone is:

- Dependency-Track deployed
- SBOM upload working
- component inventory visible
- vulnerability monitoring active

This establishes the supply chain monitoring layer.

## Third practical milestone

A mature near-term milestone is:

- DefectDojo deployed
- scan imports working
- findings visible across tools
- remediation tracking process defined

This establishes centralized vulnerability governance.

## Recommended next documents

After completing the quick start review, continue with:

- `docs/sbom-governance.md`
- `docs/operations.md`
- `docs/adoption-roadmap.md`
- `docs/security-architecture-threat-model.md`
- `docs/compliance-and-government-contracts.md`

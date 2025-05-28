# MLInsightLab-Dask

This repository contains the source code for the **ML Insight Lab Dask Services**, which power distributed computation within the ML Insight Lab Platform.

## Overview

The **Dask service** plays a dual role in the ML Insight Lab ecosystem, functioning as both the **Dask orchestrator** and the **Dask worker pool**. It enables scalable, parallel processing of compute-intensive machine learning tasks and workflows.

Key responsibilities of this service include:

- **Running the Dask scheduler** to coordinate distributed tasks
- **Spawning and managing Dask workers** to execute parallel workloads
- **Providing a compute backbone** for ML pipeline execution, feature processing, and model training at scale
- **Facilitating communication and resource coordination** across distributed nodes

This architecture allows the ML Insight Lab to scale horizontally and efficiently utilize compute resources.

## Build Status

[![Dask Service CI](https://github.com/mlinsightlab/mlinsightlab-dask/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/mlinsightlab/mlinsightlab-dask/actions/workflows/docker-publish.yml)

This service is automatically built and published via GitHub Actions. You typically do **not** need to build or run this service locally unless you are making changes to its core functionality.

## When to Use This Repository

You should pull and work on this repository **only** when:

- You are developing new Dask-based computation strategies or infrastructure
- You are modifying the way tasks are scheduled, balanced, or executed
- You are debugging or extending the Dask orchestration logic within the platform

For normal operation and integration, the platform will automatically deploy the most recent version of this service.

---

Feel free to contribute by opening issues or submitting pull requests with enhancements or bug fixes.

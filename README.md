# DevOps Capstone Project

![Build Status](https://github.com/Umesh1411/devops-capstone-project/actions/workflows/ci-build.yaml/badge.svg)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Python 3.9](https://img.shields.io/badge/Python-3.9-green.svg)](https://shields.io/)

This repository contains the project for the [**IBM DevOps and Software Engineering Professional Certificate Capstone Project**](https://www.coursera.org/learn/devops-capstone-project?specialization=devops-and-software-engineering).

## Project Overview

This microservice manages customer accounts for an e-commerce platform using Python and Flask, following Agile practices, Test-Driven Development (TDD), Continuous Integration (CI), Containerization with Docker, and automated deployment to Kubernetes/OpenShift.

## Development Environment Setup

Initialize the environment by sourcing the setup script:

```bash
source bin/setup.sh
```

## Running the Tests

To run the test suite with coverage:

```bash
nosetests
```

To run linting:

```bash
flake8
pylint service
```

## Running the Service

Start the service locally using honcho:

```bash
honcho start
```

## API Endpoints

- `GET /`: Health and service root status
- `POST /accounts`: Create a new account
- `GET /accounts`: List all accounts
- `GET /accounts/{id}`: Read an account by ID
- `PUT /accounts/{id}`: Update an account by ID
- `DELETE /accounts/{id}`: Delete an account by ID

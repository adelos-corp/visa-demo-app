# visa-demo-app

Minimal Express application for demonstrating the VISA deployment and recovery loop.

The first deployment intentionally fails because APP_SECRET is not present in the Dockerfile. VISA should diagnose the failure, propose a bounded correction, obtain approval, apply it, redeploy, and verify /health.

## Endpoints

- GET /
- GET /health
- GET /items
- POST /items

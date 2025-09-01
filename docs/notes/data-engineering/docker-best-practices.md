---
layout: default
title: "Docker Best Practices"
date: 2024-01-15
category: "Data Engineering"
---

# Docker Best Practices

*Essential guidelines for building efficient and secure Docker containers*

## Image Optimization

### Multi-stage Builds
- **Purpose:** Reduce final image size by using multiple build stages
- **Example:** Build stage for compilation, runtime stage for execution
- **Benefits:** Smaller images, better security, faster deployments

### Base Image Selection
- **Official images:** Use official images when possible
- **Alpine Linux:** Lightweight base for minimal attack surface
- **Specific versions:** Pin exact versions for reproducibility

### Layer Caching
- **Order matters:** Place frequently changing layers last
- **Copy strategy:** Copy dependency files before source code
- **Build context:** Minimize build context size

## Security Best Practices

### Non-root Users
```dockerfile
# Create non-root user
RUN groupadd -r appuser && useradd -r -g appuser appuser
USER appuser
```

### Minimal Base Images
- **Avoid:** Full OS images with unnecessary packages
- **Prefer:** Distroless or Alpine-based images
- **Scan:** Regular vulnerability scanning

### Secrets Management
- **Never commit:** Secrets in Dockerfiles or images
- **Use:** Environment variables or secret management tools
- **Runtime:** Mount secrets at runtime

## Performance Optimization

### Resource Limits
```yaml
# docker-compose.yml
services:
  app:
    deploy:
      resources:
        limits:
          cpus: '0.50'
          memory: 512M
```

### Health Checks
```dockerfile
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost/health || exit 1
```

### Volume Management
- **Named volumes:** For persistent data
- **Bind mounts:** For development
- **tmpfs:** For temporary data

## Development Workflow

### Docker Compose
```yaml
version: '3.8'
services:
  app:
    build: .
    ports:
      - "8000:8000"
    volumes:
      - .:/app
    environment:
      - DEBUG=1
```

### Development vs Production
- **Development:** Include debugging tools, hot reload
- **Production:** Optimized, minimal, security-focused
- **CI/CD:** Automated builds and testing

## Monitoring and Logging

### Logging Strategy
```dockerfile
# Use JSON logging
ENV PYTHONUNBUFFERED=1
CMD ["python", "-u", "app.py"]
```

### Metrics Collection
- **Prometheus:** Container metrics
- **Grafana:** Visualization
- **Custom metrics:** Application-specific monitoring

## Common Anti-patterns

### What to Avoid
- **Large images:** Unnecessary packages and files
- **Root user:** Running containers as root
- **Hardcoded secrets:** Credentials in images
- **Latest tags:** Unpredictable deployments

### Better Alternatives
- **Multi-stage builds:** For smaller images
- **Non-root users:** For security
- **Secret management:** For credentials
- **Specific versions:** For reproducibility

## Example Dockerfile

```dockerfile
# Multi-stage build example
FROM python:3.9-alpine AS builder

WORKDIR /app
COPY requirements.txt .
RUN pip install --user -r requirements.txt

FROM python:3.9-alpine AS runtime

# Create non-root user
RUN addgroup -g 1001 -S appgroup && \
    adduser -u 1001 -S appuser -G appgroup

WORKDIR /app
COPY --from=builder /root/.local /home/appuser/.local
COPY --chown=appuser:appgroup . .

USER appuser
ENV PATH=/home/appuser/.local/bin:$PATH

EXPOSE 8000
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:8000/health || exit 1

CMD ["python", "-u", "app.py"]
```

> **Key Principle:** Always prioritize security, performance, and maintainability when building Docker containers. Start with official images and optimize based on your specific needs.

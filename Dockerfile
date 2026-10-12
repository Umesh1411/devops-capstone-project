FROM python:3.9-slim

# Establish a working folder
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN python -m pip install -U pip wheel && \
    pip install -r requirements.txt

# Copy source files
COPY service ./service

# Become non-root user for security best practices
RUN useradd -m -r service && \
    chown -R service:service /app
USER service

# Run the service on port 8080
ENV PORT 8080
EXPOSE $PORT
CMD ["gunicorn", "--bind=0.0.0.0:8080", "--log-level=info", "service:app"]

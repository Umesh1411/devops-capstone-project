FROM python:3.9-slim

# Establish a working folder
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all necessary application files into the image
COPY service/ ./service/
COPY . .

# Create and switch to a non-root user for security best practices
RUN useradd --uid 1000 theia && chown -R theia /app
USER theia

# Expose the application port
EXPOSE 8080

# Command to run the service
CMD ["gunicorn", "--bind=0.0.0.0:8080", "--log-level=info", "service:app"]

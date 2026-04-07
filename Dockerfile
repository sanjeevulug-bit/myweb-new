# Use Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies (if exists)
RUN pip install --no-cache-dir -r requirements.txt || true

# Default command
CMD ["python", "app.py"]
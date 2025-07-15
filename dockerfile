# Use an official Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files
COPY app/ ./app/
COPY app/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run the script
CMD ["python", "app/main.py"]

# Use official Python image from DockerHub
FROM python:3.9-slim

# Set working directory in container
WORKDIR /app

# Copy current directory contents into container at /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt || echo "No requirements.txt found"

# Expose port 5000 (if your app runs on this)
EXPOSE 5000

# Command to run your app
CMD ["python", "app.py"]

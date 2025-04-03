# Use official Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy the application
COPY pyPrint.py .

# Run the application
CMD ["python", "pyPrint.py"]

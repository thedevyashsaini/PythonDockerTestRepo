FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy script
COPY script.py ./

# Default command
CMD ["python", "script.py"]

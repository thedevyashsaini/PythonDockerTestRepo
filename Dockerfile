FROM python:3.11-alpine

# Set the working directory
WORKDIR /app

RUN apk add --no-cache python3 py3-pip gcc musl-dev linux-headers python3-dev \
    && python3 -m venv /venv \
    && . /venv/bin/activate \
    && pip install --no-cache-dir --break-system-packages pyperf \
    && deactivate \
    && apk del gcc musl-dev linux-headers python3-dev

# Copy script
COPY script.py ./

# Default command
CMD ["/venv/bin/python", "script.py"]


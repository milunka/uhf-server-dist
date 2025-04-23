FROM ubuntu:25.04

# Avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install required dependencies
RUN apt-get update && apt-get install -y \
    curl \
    ffmpeg \
    unzip \
    ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create directory for recordings
RUN mkdir -p /recordings

# Create directory for db
RUN mkdir -p /var/lib/uhf-server

# Set working directory
WORKDIR /app

# Install UHF server (modified to not use sudo)
RUN curl -sL https://link.uhfapp.com/setup.sh > setup.sh && \
    chmod +x setup.sh && \
    sed -i 's/sudo //g' setup.sh && \
    bash setup.sh && \
    rm setup.sh

# Expose default port
EXPOSE ${PORT}

# Set healthcheck
HEALTHCHECK --interval=60s --timeout=10s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:${PORT}/server/stats || exit 1

# Default command
CMD ["bash"]
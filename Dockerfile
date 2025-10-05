FROM python:3.11-slim

# Install dependencies - note: fortune-mod provides the 'fortune' command
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        cowsay \
        fortune-mod \
        netcat-openbsd && \
    rm -rf /var/lib/apt/lists/*

# Add cowsay to PATH
ENV PATH="/usr/games:${PATH}"

WORKDIR /app
COPY wisecow.sh /app/
RUN chmod +x /app/wisecow.sh

EXPOSE 4499
CMD ["/app/wisecow.sh"]
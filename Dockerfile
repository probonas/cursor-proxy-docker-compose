FROM node:22-slim

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
RUN curl https://cursor.com/install -fsS | bash

ENV PATH="/root/.local/bin:$PATH"

WORKDIR /app
RUN npm install cursor-api-proxy

EXPOSE 8765
CMD ["npx", "cursor-api-proxy"]

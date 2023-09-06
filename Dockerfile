FROM ubuntu:latest

# Install dependencies
RUN apt update --qq && apt upgrade -y && \
    apt install -y nodejs npm

WORKDIR /app
COPY . /app

CMD ["node", "index.js"]
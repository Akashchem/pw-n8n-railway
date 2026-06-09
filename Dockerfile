FROM n8nio/n8n:latest

USER root

RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n

# Do not switch to USER node — Railway volumes are mounted as root,
# so the container must run as root to write to /home/node/.n8n
EXPOSE 5678

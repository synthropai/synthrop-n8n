# The 'stable' tag represents the latest production version of N8N tested for most environments
# The 'next' tag is the most up-to-date version tested in staging environments
# Many clients prefer the 'next' version, which is also used in the cloud version
# However, 'stable' is commonly used by N8N's enterprise clients

# linux/amd64
# linux/arm64

FROM docker.n8n.io/n8nio/n8n:stable

# Custom Alpine packages
USER root
RUN apk update && apk add --no-cache zip wget curl jq git

# Custom N8N nodes
USER node
RUN mkdir ~/.n8n/nodes && cd ~/.n8n/nodes && npm install \
  n8n-nodes-evolution-api \
  n8n-nodes-elevenlabs \
  @splainez/n8n-nodes-phonenumber-parser \
  n8n-nodes-chatwoot \
  n8n-nodes-globals \
  @aldinokemal2104/n8n-nodes-gowa


ENV N8N_PORT="80"
ENV N8N_RUNNERS_ENABLED="true"
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS="true"
ENV OFFLOAD_MANUAL_EXECUTIONS_TO_WORKERS="true"
#ENV QUEUE_HEALTH_CHECK_ACTIVE="true"
#HEALTHCHECK CMD curl --fail http://localhost/healthz || exit 1

ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]

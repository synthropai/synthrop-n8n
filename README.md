# Synthrop AI - Custom Image

- [Docker Image](https://hub.docker.com/r/synthropai/synthrop-n8n)

## Base Image

This custom image is based on the official n8n Docker image:
```
FROM docker.n8n.io/n8nio/n8n:latest
```

## Custom Alpine Packages

The following Alpine packages are installed:
- zip
- wget
- curl
- jq
- git

## Modules

| Module                                 | Description                                            |
|----------------------------------------|--------------------------------------------------------|
| n8n-nodes-evolution-api                | Integration with Evolution API for WhatsApp automation |
| n8n-nodes-elevenlabs                   | Integration with ElevenLabs for AI voice generation    |
| @splainez/n8n-nodes-phonenumber-parser | Utility for parsing and formatting phone numbers       |
| n8n-nodes-chatwoot                     | Integration with Chatwoot customer messaging platform  |
| n8n-nodes-globals                      | Support for global variables across workflows          |
| @aldinokemal2104/n8n-nodes-gowa       | Integration with GoWA (Go WhatsApp) API                |

## Environment Variables

The following environment variables are configured:
- `N8N_PORT="80"` - Sets the port for n8n to 80
- `N8N_RUNNERS_ENABLED="true"` - Enables workflow runners
- `N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS="true"` - Enforces file permissions for settings
- `OFFLOAD_MANUAL_EXECUTIONS_TO_WORKERS="true"` - Offloads manual executions to worker processes

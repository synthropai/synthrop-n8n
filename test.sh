docker build --platform="linux/amd64" -t synthropai/synthrop-n8n .
docker run -it --rm --name n8n -p 8080:80 synthropai/synthrop-n8n

FROM debian:bookworm-slim

RUN apt update -y && \
    apt install nginx -y

RUN apt clean all && rm -rf /var/lib/apt/lists/*

RUN sed -i 's/^# server_tokens = off/server_tokens = off' /etc/nginx/nginx.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]

FROM debian:bookworm-slim

RUN apt update -y && \
    apt install nginx -y

RUN apt clean all && rm -rf /var/lib/apt/lists/*

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]

FROM alpine:latest
RUN apk add --no-cache curl unzip
RUN curl -O https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip && \
    unzip Xray-linux-64.zip -d /usr/bin/ && \
    chmod +x /usr/bin/xray
COPY config.json /etc/xray/config.json
CMD ["/usr/bin/xray", "-config", "/etc/xray/config.json"]

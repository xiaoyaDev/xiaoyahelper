FROM alpine:3.23

ENV LANG=zh_CN.UTF-8 \
    TZ=Asia/Shanghai

RUN apk add --no-cache \
    curl \
    tzdata \
    bash && \
    apk add --no-cache \
    --repository https://dl-cdn.alpinelinux.org/v3.21/community/ \
    docker-cli==27.3.1-r5

COPY --chmod=755 aliyun_clear.sh /etc/xiaoya/aliyun_clear.sh

CMD ["sh", "/etc/xiaoya/aliyun_clear.sh", "5"]

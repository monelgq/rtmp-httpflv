FROM alpine:3.6

ENV LIVEGO_VERSION 0.0.4

RUN apk add --no-cache curl
    && mkdir -p /usr/src \
    && cd /usr/src \
    &&  curl -fSL https://github.com/gwuhaolin/livego/releases/download/${LIVEGO_VERSION}/livego_${LIVEGO_VERSION}_linux_amd64.tar.gz -o livego.tar.gz \
    && tar -xzf livego.tar.gz \
    && mv livego  / \
    && rm livego.tar.gz \
    
CMD ["/livego"]

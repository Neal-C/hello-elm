# I take no responsability for bloated images. Proceed at your own risk.
FROM ubuntu:22.04 as elm
RUN apt-get update
RUN apt-get install -y curl gzip
RUN curl -L -o elm.gz https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz
RUN gunzip elm.gz
RUN chmod +x elm
RUN mv elm /usr/local/bin/
FROM elm as builder
WORKDIR /app
COPY src/ src/
COPY elm.json elm.json
RUN elm make src/Main.elm
FROM nginx:alpine
COPY --from=builder /app/index.html /usr/share/nginx/html

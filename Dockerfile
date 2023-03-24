FROM ghcr.io/beriberikix/zephyr-arm:v3.2.0-0.16.0sdk

WORKDIR /app

COPY . /app

RUN \
  apt-get -y update \
  && west init -l \
  && west update -n \
  && west zephyr-export \
  && west build -b reel_board app -p
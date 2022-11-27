FROM ghcr.io/beriberikix/zephyr-arm:v3.2.0-0.15.2sdk

WORKDIR /app

COPY . /app

RUN \
  apt-get -y update \
  && apt-get -y install --no-install-recommends \
  && west init -l \
  && west update \
  && west zephyr-export \
  && west build -b reel_board app -p
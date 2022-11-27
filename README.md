# Zephyr Docker Example

## Overview

An example showing how to use https://github.com/beriberikix/zephyr-docker. It is based on the `basic/minimal` sample from the Zephyr repo & provides an empty ``main()`` and various configuration files that can be used to measure Zephyr's minimal ROM footprint in different configurations.

## Build

```
git clone https://github.com/beriberikix/zephyr-docker-example
docker build -t zephyr-docker-example:latest .
```
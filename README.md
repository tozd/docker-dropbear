# tozd/dropbear

<https://gitlab.com/tozd/docker/dropbear>

Available as:

- [`tozd/dropbear`](https://hub.docker.com/r/tozd/dropbear)
- [`registry.gitlab.com/tozd/docker/dropbear`](https://gitlab.com/tozd/docker/dropbear/container_registry)

## Image inheritance

[`tozd/base`](https://gitlab.com/tozd/docker/base) ← [`tozd/dinit`](https://gitlab.com/tozd/docker/dinit) ← `tozd/dropbear`

## Tags

- `alpine-314`: dropbear 2020.81
- `alpine-316`: dropbear 2022.82
- `alpine-318`: dropbear 2022.83
- `alpine-320`: dropbear 2024.85
- `alpine-322`: dropbear 2025.88

## Volumes

- `/etc/dropbear`: Volume with dropbear keys (they are automatically generated if not provided). You should put `authorized_keys` file in there, too.

## Ports

- `22/tcp`: TCP port on which dropbear listens.

## Description

Docker image logs output to stdout. All stdout output is JSON.

## GitHub mirror

There is also a [read-only GitHub mirror available](https://github.com/tozd/docker-dropbear),
if you need to fork the project there.

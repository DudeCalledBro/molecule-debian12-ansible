# Molecule Container - Debian 12

[![CI](https://github.com/DudeCalledBro/molecule-debian12-ansible/actions/workflows/ci.yml/badge.svg)](https://github.com/DudeCalledBro/molecule-debian12-ansible/actions/workflows/ci.yml)

This repository is used to build Debian 12 (Bookworm) Docker images for Ansible [Molecule](https://ansible.readthedocs.io/projects/molecule/).

## Tags

- `latest`: [Debian 12 Upstream](https://hub.docker.com/_/debian) with Python 3.x

## Build

This image is build scheduled with GitHub Actions and will be pushed to DockerHub. The image will also be rebuilt, if the `main` branch is updated. If you need to build the image locally, ensure [Docker](https://docs.docker.com/engine/installation/) is installed and execute the following:

```bash
docker build -t molecule-debian12-ansible:latest .
```

## License

Copyright © 2024 Niclas Spreng

Licensed under the [MIT license](LICENSE).

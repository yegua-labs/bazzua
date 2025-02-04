# Bazzua

Bazzite for my personal gaming PC.

## Specs
- CPU: AMD Ryzen 7 7800X3D
- GPU: NVIDIA RTX 4080
- GPU: AMD Radeon RX 6400 (vfio passthrough)
- Memory: 64 GB
- Platform: Gigabyte B650 GAMING X AX

## Installation

  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/yegua-labs/bazzua:latest
  ```

Reboot and run:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/yegua-labs/bazzua:latest

  ```

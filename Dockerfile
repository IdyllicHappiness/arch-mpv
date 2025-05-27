# Use the Arch Linux base-devel image
FROM docker.io/library/archlinux:base-devel

LABEL org.opencontainers.image.description="Convenience image which I made simply to use tools from /usr/share/mpv/scripts in Docker/Podman on any machine by building archlinux:base-devel with mpv installed."

# Update keyring and system, then install packages
RUN pacman -Sy --noconfirm archlinux-keyring && \
    pacman -Syu --noconfirm --needed && \
    pacman -S --noconfirm --needed mpv pipewire-jack

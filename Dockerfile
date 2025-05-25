# Use the Arch Linux base-devel image
FROM docker.io/library/archlinux:base-devel

# Update keyring and system, then install packages
RUN pacman -Sy --noconfirm archlinux-keyring && \
    pacman -Syu --noconfirm --needed && \
    pacman -S --noconfirm --needed mpv pipewire-jack

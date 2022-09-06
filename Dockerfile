FROM archlinux

COPY pacman.conf /etc/pacman.conf
RUN pacman -Syu --noconfirm
RUN pacman -S vim git doas pacman-contrib base-devel cargo jq --noconfirm
RUN useradd -ms /bin/bash -G wheel jdxcode
COPY doas.conf /etc/doas.conf
USER jdxcode
WORKDIR /home/jdxcode/aur

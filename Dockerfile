FROM archlinux

COPY pacman.conf /etc/pacman.conf
COPY doas.conf /etc/doas.conf
RUN pacman -Syu --noconfirm
RUN pacman -S vim git doas sudo --noconfirm
RUN useradd -ms /bin/bash jdxcode
USER jdxcode
WORKDIR /home/jdxcode

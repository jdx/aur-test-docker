FROM archlinux

COPY pacman.conf /etc/pacman.conf
COPY sudoers /etc/sudoers
RUN pacman -Syu --noconfirm
RUN pacman -S vim git doas pacman-contrib base-devel cargo jq --noconfirm
RUN useradd -ms /bin/bash -G wheel jdxcode
COPY doas.conf /etc/doas.conf
USER jdxcode
WORKDIR /home/jdxcode
RUN git clone https://aur.archlinux.org/chim.git
WORKDIR /home/jdxcode/chim

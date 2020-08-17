# villa straylight

# 1. arch linux. for the wiki. for the community.
FROM archlinux:latest

# 2. configure arch
# 2a. update system and install basics
RUN pacman-db-upgrade
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm python python-pip
RUN pacman -S --noconfirm sudo

# 2b. system essentials
RUN pacman -S --noconfirm vim htop git diffutils tmux

# 2c. dev essentials
RUN pacman -S --noconfirm zsh
# RUN pacman -S --noconfirm lazygit

# 2d. add u0 user to system 
# RUN useradd -m --groups root --groups sudo u0
RUN useradd -m --groups root u0
RUN echo '%u0 ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# 2e. cool stuff
# RUN pacman -S --noconfirm spotify-tui

# 3. dotfiles / user level config
# 3a. zsh
# hanging on to this oh my zsh config just in case
# RUN curl -L http://install.ohmyz.sh | sh
# RUN git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
USER u0
WORKDIR ~
RUN sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# I think this is copied in with the dotfiles so it's not needed
# RUN curl -fsSLO https://raw.githubusercontent.com/romkatv/dotfiles-public/master/.purepower
# RUN echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

# USER root
ADD ./dotfiles/ /home/u0/
ADD ./start.sh /home/u0/

# 3b. nvim

# # switch back to root to install install python dependencies
# WORKDIR /usr/src
# ADD ./straylight/requirements.txt .
# USER root
# RUN pip install -r /usr/src/requirements.txt

USER u0

# switch back to user u0 and run the thing!

CMD ["zsh"]
# CMD ["zsh", "start.sh"]


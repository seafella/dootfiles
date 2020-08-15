# Villa Straylight

# 1. Arch Linux. For the wiki. For the community.
FROM archlinux:latest

# 2. Configure Arch
# 2a. Update System and Install Basics
RUN pacman-db-upgrade
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm python python-pip
RUN pacman -S --noconfirm sudo

# 2b. System maintenance essentials
RUN pacman -S --noconfirm vim htop git diffutils

# 2c. Dev essentials
RUN pacman -S --noconfirm zsh
# RUN pacman -S --noconfirm lazygit

# 2d. Add u0 user to system 
# RUN useradd -m --groups root --groups sudo u0
RUN useradd -m --groups root u0
RUN echo '%u0 ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# 3. dotfiles / user level config
# 3a. zsh
# hanging on to this oh my zsh config just in case
# RUN curl -L http://install.ohmyz.sh | sh
# RUN git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
USER u0
RUN sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# RUN echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

# USER root
ADD ./dotfiles/ /home/u0/

# 3b. nvim

# # Switch back to root to install install python dependencies
# WORKDIR /usr/src
# ADD ./straylight/requirements.txt .
# USER root
# RUN pip install -r /usr/src/requirements.txt

# Switch back to user u0 and run the thing!
USER u0
CMD ["htop"]

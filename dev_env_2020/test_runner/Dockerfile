# Villa Straylight

# Arch Linux. For the wiki. For the community.
FROM archlinux:latest

# Update System and Install Basics
RUN pacman-db-upgrade
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm python python-pip

# System maintenance essentials
RUN pacman -S --noconfirm vim htop git

# Dev essentials
RUN pacman -S --noconfirm zsh

# Add u0 user to system - Heroku doesn't allow root and that's a good security best practice
RUN useradd -m -G root u0

# # Switch back to root to install install python dependencies
# WORKDIR /usr/src
# ADD ./straylight/requirements.txt .
# USER root
# RUN pip install -r /usr/src/requirements.txt

# Switch back to user shar and run the thing!
USER u0
CMD ["zsh"]

FROM ls12styler/dind:19.03.12

# Install basics (HAVE to install bash for tpm to work)
RUN apk update && apk add -U --no-cache \
    bash zsh git git-perl neovim less curl bind-tools \
    man build-base su-exec shadow openssh-client sed coreutils

# Set Timezone
RUN apk add tzdata && \
    cp /usr/share/zoneinfo/America/Argentina/Cordoba /etc/localtime && \
    echo "America/Argentina/Cordoba" > /etc/timezone && \
    apk del tzdata

ENV HOME /home/me
WORKDIR ${HOME}

# Install tmux
COPY --from=ls12styler/tmux:3.1b /usr/local/bin/tmux /usr/local/bin/tmux

# Configure text editor - vim!
RUN curl -fLo ${HOME}/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
COPY nvim/.config/nvim ${HOME}/.config/nvim
RUN nvim  --headless +PlugInstall +qall

# Setup my $SHELL
ENV SHELL /bin/zsh
COPY zsh/.config/zsh ${HOME}/.config/zsh
COPY zsh/.zshenv ${HOME}/.zshenv
RUN touch ${HOME}/.cache/z

# Install TMUX
COPY tmux/.config/tmux/ ${HOME}/.config/tmux

# Entrypoint script creates a user called `me` and `chown`s everything
COPY entrypoint.sh /bin/entrypoint.sh

# Set working directory to /workspace
WORKDIR /workspace

# Default entrypoint, can be overridden
CMD [ "/bin/entrypoint.sh" ]

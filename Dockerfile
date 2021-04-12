FROM python:3.8.5-slim-buster as pip
RUN pip3 install pynvim jedi black pylint

FROM python:3.8.5-alpine

COPY --from=pip /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages

#PKGS
RUN	apk add -U --no-cache \
 	neovim git \
	curl zsh \
	nodejs npm
RUN npm install --global --no-cache neovim

#DOTS
RUN git clone https://github.com/AgusDOLARD/dotfiles.git /tmp/dots
RUN mkdir -pv $HOME/.cache/zsh && \
	touch $HOME/.cache/zsh/history $HOME/.cache/z && \
 	cp -a /tmp/dots/nvim/. $HOME/ && \
 	cp -a /tmp/dots/zsh/. $HOME/

#VIM PLUG
RUN sh -c 'curl -fLo "$HOME/.local/share"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
RUN nvim  --headless +PlugInstall +qall

#CLEANUP
RUN rm -rf /tmp/*

WORKDIR /workspace

CMD [ "nvim", "/workspace" ]

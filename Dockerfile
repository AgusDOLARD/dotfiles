###   BUILDER   ###
FROM python:3.8.5-slim-buster as pip
RUN pip3 install pynvim jedi black pylint flake8

###   RUNNER   ###
FROM python:3.8.5-alpine
COPY --from=pip /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages

#PKGS
RUN	apk add -U --no-cache \
 	neovim git \
	curl zsh \
	nodejs npm
RUN npm install --global --no-cache neovim

#DOTS
WORKDIR /root
RUN mkdir -p .cache/zsh && \
	touch .cache/zsh/history .cache/z
COPY ./nvim/. .
COPY ./zsh/. .

#VIM PLUG
RUN sh -c 'curl -fLo "$HOME/.local/share"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
RUN nvim  --headless +PlugInstall +qall

#PROMPT
WORKDIR /root/.config/zsh
ENV PROMPT "PROMPT='%F{magenta}%n%f:%~$ '"
RUN sed -i "s/prompt\ spaceship/${PROMPT}/g" .zshrc

#CLEANUP
RUN rm -rf /tmp/* && \
	rm $HOME/.python_history

WORKDIR /workspace

CMD [ "zsh" ]

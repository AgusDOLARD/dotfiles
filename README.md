Autoinstall ZSH
-------------------
```bash
curl -sSL https://raw.githubusercontent.com/AgusDOLARD/dotfiles/master/install.sh | tr -d '\r' | sh
```

Set it as default with ```chsh $USER /bin/zsh```

Dockerized
----------

``` bash
docker pull dolard/vim
docker run -it -v $(pwd):/workspace dolard/vim:latest
```

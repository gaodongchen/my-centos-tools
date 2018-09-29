#!/bin/bash

if [ ! -x "$HOME/.antigen.zsh"]; then
    curl -L git.io/antigen | sudo tee $HOME/.antigen.zsh
    if

source $HOME/.antigen.zsh && \
antigen use oh-my-zsh && \
antigen bundle git && \
antigen bundle histroy && \
antigen bundle autojump && \
antigen bundle ssh-agent && \
antigen bundle golang && \
antigen bundle zsh-users/zsh-syntax-highlighting && \
antigen bundle zsh-users/zsh-completions && \
antigen bundle zsh-users/zsh-autosuggestions && \
antigen bundle zsh-users/zsh-history-substring-search && \
antigen theme ys && \
antigen apply

bindkey -M emacs '^P' history-substring-search-up && \
bindkey -M emacs '^N' history-substring-search-down

chmod 755 -R $HOME/.antigen/bundles/

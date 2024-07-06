# his highness all-mighty Python

**OS** 13.2.1 (22D68)

## zsh

- what is the difference between .zshenv and .zshrc? [see](https://unix.stackexchange.com/a/71258)

## pyenv - python version manager

> $ brew install pyenv  
> $ pyenv install -v 3.10.3 # Install preferred Python version  
> $ cd ~/.pyenv/versions/ # Access all python versions:  

> $ brew install pyenv-virtualenv  
> $ pyenv virtualenv [python version] [env-name]    
> $ pyenv virtualenvs  
> $ pyenv activate [env-name]    
> $ pyenv deactivate  

#### get env location

```(shell)
echo $VIRTUAL_ENV
```

#### setup

> $ code ~/.zshrc

```(shell)
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrcexport PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
```

More commands [here](https://github.com/pyenv/pyenv/blob/master/COMMANDS.md).

#### export dependencies to a file

> pip3 freeze > requirements.txt

## TODOs

1. investigate Tox for testing with different environments

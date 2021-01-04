# his highness all-mighty Python

**OS** Big Sur 11.1

## package management

> $ virtualenv [env-name]  
> $ .[env-name]/bin/activate  
> $ deactivate

### virtualenvwrapper

#### setup

> $ code ~/.zshenv

```(shell)
export VIRTUALENVWRAPPER_PYTHON="/usr/local/bin/python3"
export WORKON_HOME="/Users/farrukhnormuradov/dev/virtualenvs"
export PROJECT_HOME="/Users/farrukhnormuradov/dev"
source /usr/local/bin/virtualenvwrapper.sh
```

#### how-to

> workon [projectname]  
> mkproject (-p python3) [newprojectname]

More commands [here](https://virtualenvwrapper.readthedocs.io/en/latest/command_ref.html).

## TODOs

1. investigate Tox for testing with different environments

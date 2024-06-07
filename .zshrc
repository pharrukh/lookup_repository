# Function to set default prompt without username and hostname
set_prompt_default() {
  PROMPT='%F{blue}%~%f%# '
}

# Function to set prompt with Git branch detection
set_prompt_git() {
  PROMPT="%F{blue}%~%f $(git_prompt_info)%# "
}

# Function to set prompt with username and hostname
set_prompt_full() {
  PROMPT='%F{green}%n@%m%f:%F{blue}%~%f%# '
}

# Function to get Git branch information
git_prompt_info() {
  if git rev-parse --is-inside-work-tree &>/dev/null; then
    echo "%F{yellow}($(git rev-parse --abbrev-ref HEAD))%f"
  fi
}

# Function to toggle between prompt_default and prompt_full
toggle_prompt() {
  if [ "$CURRENT_PROMPT" = "prompt_default" ]; then
    set_prompt_full
    CURRENT_PROMPT="prompt_full"
  else
    set_prompt_default
    CURRENT_PROMPT="prompt_default"
  fi
}

# Alias for toggling prompt
alias toggleprompt='toggle_prompt'

# Set the default prompt
CURRENT_PROMPT="prompt_default"
set_prompt_default

# Automatic detection of Git repository
precmd() {
  if [ -d .git ] || git rev-parse --is-inside-work-tree &>/dev/null; then
    set_prompt_git
  else
    if [ "$CURRENT_PROMPT" = "prompt_default" ]; then
      set_prompt_default
    else
      set_prompt_full
    fi
  fi
}
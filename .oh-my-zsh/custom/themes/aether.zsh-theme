# Arrow minimal zsh theme
# Requires Nerd Fonts for the icons

# Configuration
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]$FG[078]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[green]%} %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%} ✱"

num_dirs=1 # Use 0 for full path
user="%{$fg_bold[green]%} %{$reset_color%}%F{green}%n"
truncated_path="%{$fg_bold[cyan]%} %{$reset_color%}%F{white}%$num_dirs~"
decoration="%{$fg_bold[cyan]%} %{$fg_bold[magenta]%} %{$fg_bold[red]%} %{$reset_color%}%f"
background_jobs="%(1j.%F{green}%f.)"
non_zero_return_value="%(0?..%F{red} %f)"

# Left part of prompt
PROMPT='$truncated_path $(git_prompt_info) $decoration'
# Right part of prompt
RPROMPT=' $background_jobs $non_zero_return_value'
# Input in bold
zle_highlight=(default:bold)

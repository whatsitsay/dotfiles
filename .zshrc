# If you come from bash you might have to change your $PATH.
# History
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHISt=1000
setopt appendhistory
# Manual plugins
# source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Config alias
alias config='/usr/bin/git --git-dir=/home/gkaufman/.cfg/ --work-tree=/home/gkaufman'
# Other alias
alias waterfox='flatpak run --branch=stable net.waterfox.waterfox'

# Created by `pipx` on 2025-08-25 00:05:40
autoload -U compinit && compinit
eval "$(register-python-argcomplete pipx)"
export PATH="$PATH:/home/gkaufman/.local/bin"

# Starship
eval "$(starship init zsh)"

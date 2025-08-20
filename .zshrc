# If you come from bash you might have to change your $PATH.
# Manual plugins
source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Config alias
alias config='/usr/bin/git --git-dir=/home/gkaufman/.cfg/ --work-tree=/home/gkaufman'

# Starship
eval "$(starship init zsh)"

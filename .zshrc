# If you come from bash you might have to change your $PATH.
# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
# Manual plugins
# source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Config alias
alias config='/usr/bin/git --git-dir=/home/gkaufman/.cfg/ --work-tree=/home/gkaufman'
# Other alias
alias waterfox='flatpak run --branch=stable net.waterfox.waterfox'
alias wake-am="wakeonlan -i 192.168.1.255 B4:2E:99:A4:0B:C3"
alias restart-work-vpn="tailscale down && sudo systemctl restart openvpn-client@meyer-sound.service"
alias stop-work-vpn="sudo systemctl stop openvpn-client@meyer-sound.service && tailscale up"
alias work-vpn-status="systemctl status openvpn-client@meyer-sound.service"
alias start-mullvad="tailscale down && mullvad connect"
alias stop-mullvad="mullvad disconnect && tailscale up"
alias restart-touchpad="sudo modprobe -r psmouse && sudo modprobe psmouse"

# Created by `pipx` on 2025-08-25 00:05:40
autoload -U compinit && compinit
eval "$(register-python-argcomplete pipx)"
export PATH="$PATH:/home/gkaufman/.local/bin"

# Starship
eval "$(starship init zsh)"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/gkaufman/.dart-cli-completion/zsh-config.zsh ]] && . /home/gkaufman/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]


source /home/gkaufman/.config/broot/launcher/bash/br

## Special command for changing path based on lf navigation
lfcd () {
    # `command` is needed in case `lfcd` is aliased to `lf`
    cd "$(command lf -print-last-dir "$@")"
}
alias lf='lfcd'


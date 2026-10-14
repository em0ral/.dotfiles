
# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :





# Homebrew on Agentiv, MacPorts on btc-node
[[ -d /opt/homebrew/bin ]] && export PATH=/opt/homebrew/bin:$PATH
[[ -d /opt/local/bin ]] && export PATH=/opt/local/bin:/opt/local/sbin:$PATH

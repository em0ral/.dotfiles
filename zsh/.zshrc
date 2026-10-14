

##### Starship Cross Shell Prompt #####
eval "$(starship init zsh)"

#####  #####
# Homebrew on Agentiv (/opt/homebrew), MacPorts on btc-node (/opt/local)
for p in zsh-autosuggestions zsh-syntax-highlighting; do
  for d in /opt/homebrew/share /opt/local/share; do
    [[ -r $d/$p/$p.zsh ]] && { source $d/$p/$p.zsh; break; }
  done
done


##### alias #####
alias ll="eza -alhr --icons"
alias ls="ls -alhr --color"
alias t='tmux new -A -s ipad -c ~/Documents/myPKA'

# >>> claude-ssh-token >>>
# Claude Code over SSH: the login Keychain is locked there, so use the setup-token token.
# The token lives in ~/.config/claude-code/ssh-oauth-token (mode 600, local, never tracked).
# Exported only in SSH shells, including tmux sessions attached from SSH.
if [[ -n "${SSH_CONNECTION}${SSH_CLIENT}${SSH_TTY}" ]] || { [[ -n "$TMUX" ]] && tmux show-environment SSH_CONNECTION 2>/dev/null | grep -q '^SSH_CONNECTION='; }; then
  [[ -r "$HOME/.config/claude-code/ssh-oauth-token" ]] && export CLAUDE_CODE_OAUTH_TOKEN="$(<"$HOME/.config/claude-code/ssh-oauth-token")"
fi
# <<< claude-ssh-token <<<

# configure gpg tty
export GPG_TTY=$TTY

# configure ssh
{ eval `ssh-agent -s`; ssh-add } &>/dev/null


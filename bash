#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[1m\]\[\e[36m\]\w\[\e[0m\]\$ '


alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ll='ls -lah'
alias ls='ls --color=auto'
alias py='python'
alias recon='sudo systemctl restart NetworkManager'
alias susp='systemctl suspend'
alias tree='tree -C'
alias view='nvim -R'
alias clip='xclip -sel clipboard'

mkbkp() {
    tar -cz  ~/.ssh ~/docs ~/notes ~/pics/personal |
	gpg -c --cipher-algo AES256 > ~/tmp/backup-$(date +%F).tgz.gpg
}

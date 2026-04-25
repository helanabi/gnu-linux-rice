#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[1m\]\[\e[36m\]\w\[\e[0m\]\$ '


alias diff='diff --color=auto'
alias e='setsid emacs'
alias grep='grep --color=auto'
alias ll='ls -lah'
alias ls='ls --color=auto'
alias py='python -q'
alias recon='sudo systemctl restart NetworkManager'
alias sdcv='sdcv --color'
alias susp='systemctl suspend'
alias tree='tree -C'
alias view='nvim -R'
alias clip='xclip -sel clipboard'

function bkp {
    tarball=~/tmp/backup-$(date +%F).tgz.gpg
    tar -cz  ~/.ssh ~/docs ~/notes | gpg -c --cipher-algo AES256 > $tarball

    for dir in ~/code \
	       ~/dl \
	       ~/islam \
	       ~/.local/share/stardict \
	       ~/pics \
	       $tarball
    do
	rsync -avh --delete --exclude=.venv "$dir" /mnt/drive/
    done
}

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[1m\]\[\e[36m\]\w\[\e[0m\]\$ '


alias bt='sudo systemctl start bluetooth'
alias clip='xclip -sel clipboard'
alias diff='diff --color=auto'
alias bt-earbuds='bluetoothctl connect "78:15:2D:5F:E7:6A"'
alias e='setsid emacs'
alias grep='grep --color=auto'
alias ll='ls -lah'
alias ls='ls --color=auto'
alias mkresume='pandoc -V geometry:margin=0.7in -V fontsize=10pt'
alias py='python -q'
alias recon='sudo systemctl restart NetworkManager'
alias sdcv='sdcv --color'
alias susp='systemctl suspend'
alias tree='tree -C'
alias view='nvim -R'

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


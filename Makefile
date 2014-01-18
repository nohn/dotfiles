backup:
	mkdir ~/.dotfiles_backup_$(shell date --iso-8601)
	mv ~/.bash_aliases ~/.dotfiles_backup_$(shell date --iso-8601)/
	mv ~/.bashprompt   ~/.dotfiles_backup_$(shell date --iso-8601)/
	mv ~/.bashrc       ~/.dotfiles_backup_$(shell date --iso-8601)/
	mv ~/.gitconfig    ~/.dotfiles_backup_$(shell date --iso-8601)/
	mv ~/.muttrc       ~/.dotfiles_backup_$(shell date --iso-8601)/
install:
	ln -s $(shell pwd)/dotbash_aliases ~/.bash_aliases
	ln -s $(shell pwd)/dotbashprompt   ~/.bashprompt
	ln -s $(shell pwd)/dotbashrc       ~/.bashrc
	ln -s $(shell pwd)/dotgitconfig    ~/.gitconfig
	ln -s $(shell pwd)/dotscreenrc     ~/.screenrc
	ln -s $(shell pwd)/muttrc          ~/.muttrc

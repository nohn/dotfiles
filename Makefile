backup:
	mkdir ~/.dotfiles_backup_$(shell date --iso-8601)
	mkdir ~/.dotfiles_backup_$(shell date --iso-8601)/.ssh
	mv ~/.bash_aliases ~/.dotfiles_backup_$(shell date --iso-8601)/
	mv ~/.cvsrc        ~/.dotfiles_backup_$(shell date --iso-8601)/
	mv ~/.bashprompt   ~/.dotfiles_backup_$(shell date --iso-8601)/
	mv ~/.bashrc       ~/.dotfiles_backup_$(shell date --iso-8601)/
	mv ~/.gitconfig    ~/.dotfiles_backup_$(shell date --iso-8601)/
	mv ~/.muttrc       ~/.dotfiles_backup_$(shell date --iso-8601)/
	mv ~/.screenrc     ~/.dotfiles_backup_$(shell date --iso-8601)/
	mv ~/.ssh/config   ~/.dotfiles_backup_$(shell date --iso-8601)/.ssh/config
install:
	ln -s $(shell pwd)/.bash_aliases ~/.bash_aliases
	ln -s $(shell pwd)/.bashprompt   ~/.bashprompt
	ln -s $(shell pwd)/.bashrc       ~/.bashrc
	ln -s $(shell pwd)/.cvsrc        ~/.cvsrc
	ln -s $(shell pwd)/.gitconfig    ~/.gitconfig
	ln -s $(shell pwd)/.muttrc       ~/.muttrc
	ln -s $(shell pwd)/.screenrc     ~/.screenrc
	ln -s $(shell pwd)/.ssh/config   ~/.ssh/config

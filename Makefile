backup:
	mkdir ~/.dotfiles_backup_$(shell date --iso-8601)
	mv ~/.bash_aliases ~/.dotfiles_backup_$(shell date --iso-8601)/
	mv ~/.bashprompt   ~/.dotfiles_backup_$(shell date --iso-8601)/
	mv ~/.bashrc       ~/.dotfiles_backup_$(shell date --iso-8601)/
	mv ~/.gitconfig    ~/.dotfiles_backup_$(shell date --iso-8601)/
	mv ~/.muttrc       ~/.dotfiles_backup_$(shell date --iso-8601)/
install: backup
	ln -s $(pwd)/dotbash_aliases ~/.bash_aliases
	ln -s $(pwd)/dotbashprompt   ~/.bashprompt
	ln -s $(pwd)/dotbashrc       ~/.bashrc
	ln -s $(pwd)/dotgitconfig    ~/.gitconfig
	ln -s $(pwd)/muttrc          ~/.muttrc


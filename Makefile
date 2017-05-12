.PHONY: profile vim go drone

profile:
	ln -sf ~/dotfiles/bash_profile ~/.bash_profile
	ln -sf ~/dotfiles/bashrc ~/.bashrc
	ln -sf ~/dotfiles/profile ~/.profile

vim:
	ln -sf ~/dotfiles/vimrc ~/.vimrc
	ln -sf ~/dotfiles/vim ~/.vim
	mkdir -p ~/dotfiles/vim/autoload ~/dotfiles/vim/bundle && curl -LSso ~/dotfiles/vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim	

go:
	git clone https://github.com/fatih/vim-go.git ~/dotfiles/vim/bundle/vim-go
	(cd go && ./build.sh)

drone:
	(cd drone && ./build.sh)

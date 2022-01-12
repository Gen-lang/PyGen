# Usage
# Just type 'make' or 'make install'

install:
ifeq ($(OS),Windows_NT)
	@echo "Currently, Windows is not supported."
else
	@pip install pyinstaller
	@pyinstaller ./main.py --onefile
	@cp ./dist/main /usr/local/bin/pygen
	@cp ./editor/gen.vim ~/.vim/syntax
	@echo "autocmd BufRead,BufNewFile *.gen set filetype=gen" >> ~/.vimrc
	@echo "\033[0;32mPyGen Compilation Succeeded"
	@echo "\033[0;32mType 'pygen'"
endif

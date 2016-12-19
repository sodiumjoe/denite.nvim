install:
	pip install neovim --upgrade
	pip install pytest --upgrade
	pip install flake8 --upgrade
	pip install mypy-lang --upgrade
	pip install vim-vint --upgrade

lint:
	vint --version
	vint plugin
	vint autoload
	flake8 --version
	flake8 rplugin/python3/denite
	mypy --version
	mypy --silent-imports rplugin/python3/denite

test:
	./vim-themis/bin/themis --version
	./vim-themis/bin/themis test/autoload/*
	pytest --version
	pytest rplugin/python3/denite

.PHONY: install lint test

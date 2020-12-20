init:
	pip install -r requirements.txt
	pip install -r requirements-dev.txt
	pip install -e .
	pre-commit install

format:
	black . --line-length=120
	isort . --multi-line VERTICAL_HANGING_INDENT --trailing-comma --line-width=120
	flake8

test:
	python3 -m pytest tests/ --cov=project_name/ --cov-report term-missing --cov-config=tests/.coveragerc

check:
	pre-commit run --all-files

colab: init
	cp .vscode/default_settings.json .vscode/settings.json
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
	sudo apt-add-repository https://cli.github.com/packages
	sudo apt update
	sudo apt install gh

clean:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info

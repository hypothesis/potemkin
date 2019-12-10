.PHONY: help
help: 
        @echo "make help              Show this help message"
        @echo "make dev               Run the app in the development server"
        @echo "make shell             Launch a Python shell in the dev environment"
        @echo "make clean             Delete development artefacts (cached files, "
        @echo "                       dependencies, etc)"

.PHONY: dev
dev: python
	@tox -q

.PHONY: shell
shell: python
	@tox -qe shell

.PHONY: clean
clean:
	@rm -rf .tox
	@find . -type f -name "*.py[co]" -delete
	@find . -type d -name "__pycache__" -delete

.PHONY: python
python:
	@./bin/install-python

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

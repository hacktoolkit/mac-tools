.PHONY: help test

help:
	@echo 'Hacktoolkit Mac tools'
	@echo '  make test   Run the tools’ isolated test suites'
	@echo '  See each tool’s make help for installation and packaging'

test:
	$(MAKE) -C voice-memo-transcriber test

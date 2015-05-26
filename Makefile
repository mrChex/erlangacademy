.PHONY: clean

help:
	@echo "  clean      remove unwanted stuff"

clean:
	find . -name '*.beam' -exec rm -f {} +

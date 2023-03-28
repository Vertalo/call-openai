.PHONY: help install_dependencies install

help:
	@echo "call-openai Makefile targets:"
	@echo "  help                    - Show this help message."
	@echo "  install_dependencies    - Install the required Python dependencies."
	@echo "  install                 - Install the call-openai script and make it globally accessible."

install_dependencies:
	pip install -r requirements.txt

install:
	chmod +x call-openai
	sudo ln -sf "$(shell pwd)/call-openai" /usr/local/bin/call-openai

